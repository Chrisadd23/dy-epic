import 'package:app_flutter_produkt_bestellen/core/classes/euro_input_formatter.dart';
import 'package:app_flutter_produkt_bestellen/core/extension/double.dart';
import 'package:app_flutter_produkt_bestellen/core/extension/list_extenstion.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/show_failure_dialog.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/local_neumorphic_button.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/cubit_category.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_integration_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_integration_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/background_custom_paint.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/product_info_custom_clipper.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductIntegrationPage extends StatelessWidget {
  const ProductIntegrationPage({super.key, this.product, this.categoryIndex});

  final CategoryEntity? product;
  final String? categoryIndex;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductIntegrationCubit>(
          create: (context) => getIt<ProductIntegrationCubit>()
            ..changeProduct(product: product, categoryIndex: categoryIndex),
        ),
      ],
      child: GlobalScaffold(
        appBarContext: context,
        body: _ProductIntegrationBody(product: product),
      ),
    );
  }
}

class _ProductIntegrationBody extends StatelessWidget {
  const _ProductIntegrationBody({this.product});

  final CategoryEntity? product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          BackgroundCustomPaint(
            child: BlocSelector<ProductIntegrationCubit,
                    ProductIntegrationState, Uint8List?>(
                selector: (state) => state.imageUint8List,
                builder: (context, uInt8List) {
                  if (uInt8List != null) {
                    return Image.memory(uInt8List);
                  } else {
                    return const _PictureIntegrationButton();
                  }
                }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: ProductInfoCustomClipper(),
              child: Container(
                color: AppColors.greyCACACA,
                child: _ProductInformationIntegrationColumn(product),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductInformationIntegrationColumn extends HookWidget {
  const _ProductInformationIntegrationColumn(this.product);

  final CategoryEntity? product;

  @override
  Widget build(BuildContext context) {
    final attributeController = useTextEditingController();
    final priceTextController =
        useTextEditingController(text: product?.price?.getCurrency());
    final productMarcController = useTextEditingController(text: product?.type);
    final productNameController =
        useTextEditingController(text: product?.productTitle);
    final productNumberController =
        useTextEditingController(text: product?.productNumber);
    return LayoutBuilder(builder: (context, constraints) {
      return ListView(
        children: [
          SizedBox(
            height: constraints.maxHeight * 0.41,
          ),
          Column(
            children: [
              Center(
                child: Text(
                  'Kategorie wählen:',
                  style: AppTextStyle.regular18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 35,
                child: _CategoryListView(),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
          _ProductInformationColumn(
            isOnlyReadable: true,
            productMarcController: productNumberController,
            hintText: 'Produktnummer',
            textInputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(r"[a-zA-z0-9]"),
              ),
            ],
          ),
          _ProductInformationColumn(
            isOnlyReadable: true,
            productMarcController: productMarcController,
            hintText: 'Marke',
            textInputFormatters: const [],
          ),
          _ProductInformationColumn(
            isOnlyReadable: true,
            productMarcController: productNameController,
            hintText: 'Name',
            textInputFormatters: const [],
          ),
          _ProductInformationColumn(
            productMarcController: priceTextController,
            hintText: 'Preis',
            textInputFormatters: [
              EuroInputFormatter(),
            ],
          ),
          Center(
            child: Text(
              'Eigenschaften hinzufügen:',
              style: AppTextStyle.regular18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 40,
              child: _ProductAddingRow(controller: attributeController),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: _ProductAttributesColumn(),
          ),
          const _VisibleCheckbox(),
          const SizedBox(
            height: 20,
          ),
          BlocListener<ProductIntegrationCubit, ProductIntegrationState>(
            listener: (context, state) {
              if (state.failure != null) {
                ShowFailureDialog.present(
                    id: 'product_integration',
                    context: context,
                    failure: state.failure!.getFailureMessage);
              }
            },
            child: UnconstrainedBox(
              child: SizedBox(
                height: 50,
                width: 200,
                child: BlocProvider<CubitCategory>.value(
                  value: getIt<CubitCategory>(
                      instanceName: context
                          .read<ProductIntegrationCubit>()
                          .state
                          .categoryProduct
                          .name),
                  child: _SendButtonContainer(
                      productNumberController: productNumberController,
                      productNameController: productNameController,
                      productMarcController: productMarcController,
                      priceTextController: priceTextController),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    });
  }
}

class _VisibleCheckbox extends StatelessWidget {
  const _VisibleCheckbox();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sichtbar:',
          style: AppTextStyle.colorBlackSize20ShadowWhite
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
        ),
        BlocSelector<ProductIntegrationCubit, ProductIntegrationState, bool>(
          selector: (state) => state.isProductVisible,
          builder: (context, isVisible) {
            return Switch(
              value: isVisible,
              onChanged: (value) async {
                context.read<ProductIntegrationCubit>().toggleIsVisible(
                      toggle: value,
                    );
              },
              activeThumbColor: Colors.green,
              inactiveTrackColor: Colors.red[200],
              inactiveThumbColor: Colors.red,
              hoverColor: Colors.blue,
            );
          },
        ),
      ],
    );
  }
}

class _SendButtonContainer extends StatelessWidget {
  const _SendButtonContainer({
    required this.productNumberController,
    required this.productNameController,
    required this.productMarcController,
    required this.priceTextController,
  });

  final TextEditingController productNumberController;
  final TextEditingController productNameController;
  final TextEditingController productMarcController;
  final TextEditingController priceTextController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BlocSelector<ProductIntegrationCubit, ProductIntegrationState,
                bool>(
            selector: (state) =>
                state.imageUploadInProcess || state.infoUploadInProcess,
            builder: (context, isInProcess) {
              return LocalNeumorphicButton(
                  duration: const Duration(milliseconds: 50),
                  color: Colors.white,
                  borderRadius: 10,
                  onPressedBasedOnDuration: isInProcess
                      ? () {}
                      : () async {
                          await context
                              .read<ProductIntegrationCubit>()
                              .uploadImage(
                                  productNumber: productNumberController.text);
                          if (context.mounted) {
                            final categoryProductModel = await context
                                .read<ProductIntegrationCubit>()
                                .uploadProduct(
                                    productNumber: productNumberController.text,
                                    productTitle: productNameController.text,
                                    type: productMarcController.text,
                                    price: priceTextController.text);
                            if (context.mounted &&
                                context
                                    .read<ProductIntegrationCubit>()
                                    .state
                                    .changeProduct &&
                                categoryProductModel != null) {
                              context
                                  .read<CubitCategory>()
                                  .replaceProductAttributes(
                                      categoryModel: categoryProductModel);
                            } else if (context.mounted &&
                                categoryProductModel != null) {
                              context.read<CubitCategory>().updateProducts(
                                  categoryModel: categoryProductModel);
                            }
                          }
                        },
                  child: isInProcess
                      ? const FittedBox(
                          child: LoadingWidget(
                          color: AppColors.greyC1C1C1,
                        ))
                      : Center(
                          child: FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                'Speichern',
                                style: AppTextStyle.bold18,
                              )),
                        ));
            }),
      ),
    );
  }
}

class _ProductInformationColumn extends StatelessWidget {
  const _ProductInformationColumn({
    required this.productMarcController,
    required this.textInputFormatters,
    required this.hintText,
    this.isOnlyReadable = false,
  });

  final TextEditingController productMarcController;
  final List<TextInputFormatter> textInputFormatters;
  final String hintText;
  final bool isOnlyReadable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            '$hintText hinzufügen:',
            style: AppTextStyle.regular18,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 40,
          child: _InputTextForm(
              controller: productMarcController,
              hintText: hintText,
              textInputFormatters: textInputFormatters,
              isOnlyReadable: isOnlyReadable),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class _InputTextForm extends StatelessWidget {
  const _InputTextForm({
    required this.controller,
    required this.textInputFormatters,
    required this.hintText,
    required this.isOnlyReadable,
  });

  final TextEditingController controller;
  final List<TextInputFormatter> textInputFormatters;
  final String hintText;
  final bool isOnlyReadable;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.1),
        child: _TextFormField(
          controller: controller,
          hintText: hintText,
          textInputFormatters: textInputFormatters,
          isOnlyReadable: isOnlyReadable,
        ),
      );
    });
  }
}

class _ProductAddingRow extends StatelessWidget {
  const _ProductAddingRow({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _ProductAttributesTextFormField(controller: controller),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: IconButton(
            onPressed: () {
              context
                  .read<ProductIntegrationCubit>()
                  .addProductAttribute(attribute: controller.text);
              controller.clear();
            },
            icon: const Icon(Icons.add),
          ),
        )
      ],
    );
  }
}

class _ProductAttributesColumn extends StatelessWidget {
  const _ProductAttributesColumn();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductIntegrationCubit, ProductIntegrationState,
            List<String>>(
        selector: (state) => state.attributes,
        builder: (context, state) {
          return Column(
            children: [
              ...state.mapIndexed((attribute, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            attribute,
                            style: AppTextStyle.regular18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.8),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                context
                                    .read<ProductIntegrationCubit>()
                                    .removeProductAttribute(index: index);
                              },
                              icon: const Icon(Icons.remove),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          );
        });
  }
}

class _CategoryListView extends StatelessWidget {
  const _CategoryListView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: _CategoryListRow(
            category: 'Arbeitstische',
            categoryProduct: EnumCategoryProduct.workingTable,
          ),
        ),
        _CategoryListRow(
          category: 'Bürostühle',
          categoryProduct: EnumCategoryProduct.officeChairNormal,
        ),
        _CategoryListRow(
          category: 'Hochlehner',
          categoryProduct: EnumCategoryProduct.officeChairHochlehner,
        ),
        _CategoryListRow(
          category: 'Konferenzstühle',
          categoryProduct: EnumCategoryProduct.conferenceChair,
        ),
      ],
    );
  }
}

class _TextFormField extends StatelessWidget {
  const _TextFormField({
    required this.controller,
    required this.hintText,
    required this.textInputFormatters,
    required this.isOnlyReadable,
  });

  final TextEditingController controller;
  final List<TextInputFormatter> textInputFormatters;
  final String hintText;
  final bool isOnlyReadable;

  @override
  Widget build(BuildContext context) {
    final readOnly = isOnlyReadable &&
        context.read<ProductIntegrationCubit>().state.changeProduct;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: readOnly ? Colors.grey[300] : Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: TextFormField(
            readOnly: readOnly,
            inputFormatters: textInputFormatters,
            textAlign: TextAlign.center,
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle: AppTextStyle.bold16,
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          )),
    );
  }
}

class _ProductAttributesTextFormField extends StatelessWidget {
  const _ProductAttributesTextFormField({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Eigenschaft',
              hintStyle: AppTextStyle.bold16,
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          )),
    );
  }
}

class _PictureIntegrationButton extends StatelessWidget {
  const _PictureIntegrationButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), border: Border.all()),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
            height: 60,
            width: 60,
            child: LocalNeumorphicButton(
                duration: const Duration(milliseconds: 50),
                borderRadius: 10,
                onPressedBasedOnDuration: () async {
                  await context.read<ProductIntegrationCubit>().getImage();
                },
                child: const Icon(Icons.photo))),
      ),
    );
  }
}

class _CategoryListRow extends StatelessWidget {
  const _CategoryListRow(
      {required this.category, required this.categoryProduct});

  final String category;
  final EnumCategoryProduct categoryProduct;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductIntegrationCubit, ProductIntegrationState,
            EnumCategoryProduct>(
        selector: (state) => state.categoryProduct,
        builder: (context, enumCategory) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LocalNeumorphicButton(
                color: enumCategory == categoryProduct
                    ? AppColors.greyA7A7A7
                    : Colors.white,
                onPressedBasedOnDuration:
                    context.read<ProductIntegrationCubit>().state.changeProduct
                        ? () {}
                        : () => context
                            .read<ProductIntegrationCubit>()
                            .changeCategory(categoryProduct: categoryProduct),
                borderRadius: 10,
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: FittedBox(child: Text(category)),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
