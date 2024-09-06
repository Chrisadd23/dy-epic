import 'dart:typed_data';

import 'package:app_flutter_produkt_bestellen/core/domain/entity/entity_core_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/extension/double.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/local_neumorphic_button.dart';
import 'package:app_flutter_produkt_bestellen/core/scaffold_messengers.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/domain/entity/category_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/cubit/product_state.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/product_info_custom_clipper.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/product_page_background_custom_paint.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/product_polygonal_shape_custom_clipper.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/domain/entity/shopping_basket_entity.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/event_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, this.product, this.color, this.recordOrder});

  final CategoryEntity? product;
  final String? color;
  final ({ShoppingBasketProduct chosenProduct, int index})? recordOrder;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductCubit>(
          create: (BuildContext context) => getIt<ProductCubit>()
            ..load(product: product, color: color, recordOrder: recordOrder),
        ),
        BlocProvider<BlocShoppingBasket>.value(
            value: getIt<BlocShoppingBasket>())
      ],
      child: GlobalScaffold(
        appBarContext: context,
        body: const _ProductBody(),
      ),
    );
  }
}

class _ProductBody extends StatelessWidget {
  const _ProductBody();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      child: Stack(
        children: [
          const _BackgroundCustomPaint(),
          const DialogShoppingBasket(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: ProductInfoCustomClipper(),
              child: Container(
                color: AppColors.greyCACACA,
                child: const _ProductPageClipPathColumn(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductPageClipPathColumn extends StatelessWidget {
  const _ProductPageClipPathColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ClipPath(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.31,
                ),
                const _ProductCounterContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: BlocSelector<ProductCubit, ProductState,
                          ({List<String>? attributes, String? title})>(
                      selector: (state) => (
                            attributes: state.productEntity?.attributes,
                            title: state.productEntity?.productTitle
                          ),
                      builder: (context, productInfoRecord) {
                        return SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  productInfoRecord.title ??
                                      AppText.productInformation,
                                  style: AppTextStyle.bold18,
                                ),
                                if (productInfoRecord.attributes != null &&
                                    productInfoRecord.attributes!.isNotEmpty)
                                  ...productInfoRecord.attributes!
                                      .map((attribute) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 5.0),
                                                  child: Container(
                                                    height: 5,
                                                    width: 5,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(35),
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                Expanded(
                                                    child: Text(attribute)),
                                              ],
                                            ),
                                          )),
                              ],
                            ));
                      }),
                ),
              ],
            ),
          ),
        )),
        const _ProductShoppingBasketContainer(),
      ],
    );
  }
}

class _ProductShoppingBasketContainer extends HookWidget {
  const _ProductShoppingBasketContainer();

  @override
  Widget build(BuildContext context) {
    ValueNotifier isInProcess = useState(false);
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, right: 35, left: 35, bottom: 20),
      child: LocalNeumorphicButton(
        borderRadius: 10,
        onPressedBasedOnDuration: isInProcess.value
            ? () {}
            : () {
                isInProcess.value = true;
                final productState = context.read<ProductCubit>().state;
                final productErrorMessage = context
                    .read<ProductCubit>()
                    .checkIfStateCanBeAddedToTheBasket();
                if (productErrorMessage == null) {
                  context.read<BlocShoppingBasket>().add(
                      EventShoppingBasket.add(
                          category: '',
                          productOrderCount: productState.productOrderCount,
                          productEntity: productState.productEntity!,
                          entityCorePicture: productState.entityCorePicture!,
                          timeIndex: productState.position));
                  context.read<ProductCubit>().clear();
                  isInProcess.value = false;
                } else {
                  GlobalScaffoldMessenger.error(
                    context: context,
                    information: productErrorMessage,
                    gradient: const LinearGradient(
                        colors: [Color.fromRGBO(87, 87, 87, 0.0), Colors.white],
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft),
                  );
                  Future.delayed(const Duration(milliseconds: 4000),
                      () => isInProcess.value = false);
                }
              },
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.sizeOf(context).height * 0.1,
              width: double.infinity,
              child: Row(
                children: [
                  _ShoppingBasketButtonText(width: constraints.maxWidth * 0.6),
                  Expanded(
                    child: BlocSelector<ProductCubit, ProductState, double>(
                        selector: (state) =>
                            (state.productEntity?.normalPrice ?? 0) *
                            state.productOrderCount,
                        builder: (context, amount) => Center(
                                child: FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                amount.getCurrency(),
                                style: AppTextStyle.bold18,
                              ),
                            ))),
                  )
                ],
              ));
        }),
      ),
    );
  }
}

class _ShoppingBasketButtonText extends StatelessWidget {
  const _ShoppingBasketButtonText({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        AppText.addToShoppingBasket,
        style: AppTextStyle.bold16.copyWith(shadows: [
          const BoxShadow(
              color: Colors.white,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 2)),
        ]),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _ProductCounterContainer extends StatelessWidget {
  const _ProductCounterContainer();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductCubit, ProductState, int>(
        selector: (state) => state.productOrderCount,
        builder: (context, count) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: double.infinity,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: constraints.maxWidth * 0.4,
                        height: constraints.maxHeight,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipPath(
                            clipper: ProductPolygonalShapeCustomClipper(),
                            child: Container(
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipPath(
                                  clipper: ProductPolygonalShapeCustomClipper(),
                                  child: Container(
                                    color: Colors.white,
                                    child: Center(
                                      child: FittedBox(
                                          child: Text(
                                        count.toString(),
                                        style: AppTextStyle.bold22,
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: constraints.maxWidth * 0.15,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: IconButton(
                          onPressed: () {
                            context.read<ProductCubit>().addProduct();
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: constraints.maxWidth * 0.15,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: IconButton(
                          onPressed: () {
                            context.read<ProductCubit>().subtractProduct();
                          },
                          icon: const Icon(Icons.remove),
                        ),
                      ),
                      const Spacer()
                    ],
                  );
                })),
          );
        });
  }
}

class _BackgroundCustomPaint extends StatelessWidget {
  const _BackgroundCustomPaint();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProductCubit, ProductState, EntityCorePictures?>(
      selector: (state) => state.entityCorePicture,
      builder: (context, entityCorePicture) {
        return CustomPaint(
          painter: ProductPageBackgroundCustomPaint(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.25 - 20,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                    child: ClipPath(
                      clipper: ProductPolygonalShapeCustomClipper(),
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipPath(
                            clipper: ProductPolygonalShapeCustomClipper(),
                            child: Container(
                              color: Colors.white,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      entityCorePicture?.listIntForUint8List !=
                                              null
                                          ? Image.memory(Uint8List.fromList(
                                              entityCorePicture!
                                                  .listIntForUint8List))
                                          : const SizedBox.shrink(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.07,
                child: BlocSelector<ProductCubit, ProductState, double>(
                    selector: (state) => state.productEntity?.normalPrice ?? 0,
                    builder: (context, price) {
                      return Center(
                        child: Text(
                          price.getCurrency(),
                          style: AppTextStyle.bold22,
                        ),
                      );
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}
