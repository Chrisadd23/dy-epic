import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/extension/double.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_cubits/cubit_pictures.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/cubit/category_office_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_office_chair/presentation/cubit/choose_office_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_name.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_picture.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PageBuerostuehle extends HookWidget {
  const PageBuerostuehle({super.key, this.enumSelectOfficeChairCategory});

  final EnumSelectOfficeChairCategory? enumSelectOfficeChairCategory;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
      ),
      BlocProvider<CubitPictures>.value(
        value: getIt<CubitPictures>(),
      )
    ], child: const _BlocProviderCubitChooseOfficeChair());
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<EnumSelectOfficeChairCategory?>(
        'enumSelectOfficeChairCategory', enumSelectOfficeChairCategory));
  }
}

class _BlocProviderCubitChooseOfficeChair extends StatelessWidget {
  const _BlocProviderCubitChooseOfficeChair();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitChooseOfficeChair>.value(
      value: getIt<CubitChooseOfficeChair>(),
      child: const _BlocBuilderChooseOfficeChair(),
    );
  }
}

class _BlocBuilderChooseOfficeChair extends StatelessWidget {
  const _BlocBuilderChooseOfficeChair();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitChooseOfficeChair, EnumSelectOfficeChairCategory>(
        builder: (context, state) {
      return state == EnumSelectOfficeChairCategory.normal
          ? _BlocPrividerCubitChairNormal(selectedCategory: state)
          : _BlocProviderCubitChairHochlehner(
              selectedCategory: state,
            );
    });
  }
}

class _BlocProviderCubitChairHochlehner extends StatelessWidget {
  const _BlocProviderCubitChairHochlehner({
    required this.selectedCategory,
  });

  final EnumSelectOfficeChairCategory selectedCategory;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<CubitOfficeChair>(instanceName: selectedCategory.name)
              ..load(selectedCategory.name),
        child: GlobalScaffold(
            appBarContext: context, body: const _BlocBuilderBuerostuehle()));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<EnumSelectOfficeChairCategory>(
        'selectedCategory', selectedCategory));
  }
}

class _BlocPrividerCubitChairNormal extends StatelessWidget {
  const _BlocPrividerCubitChairNormal({
    required this.selectedCategory,
  });

  final EnumSelectOfficeChairCategory selectedCategory;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitOfficeChair>(
        create: (context) =>
            getIt<CubitOfficeChair>(instanceName: selectedCategory.name)
              ..load(selectedCategory.name),
        child: GlobalScaffold(
            appBarContext: context, body: const _BlocBuilderBuerostuehle()));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<EnumSelectOfficeChairCategory>(
        'selectedCategory', selectedCategory));
  }
}

class _BlocBuilderBuerostuehle extends StatelessWidget {
  const _BlocBuilderBuerostuehle();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<CubitOfficeChair, StateCategory>(
            builder: (context, state) => state.map(
                loading: (loading) => const LoadingWidget(
                      firstWidth: 110,
                      secondWidth: 60,
                    ),
                failure: (failure) => FailureWidget(
                    failure: failure.failure.when(
                        message: (message) => message ?? '',
                        databaseError: (databaseError) => databaseError ?? '')),
                success: (success) {
                  final listProducts = success.productCategory?.listProduct
                      .map((product) => Product(
                            productType:
                                product.productType as EnumCategoryOfficeChair,
                            picturePath: product.picturePath,
                            price: product.price,
                            name: product.name,
                          ))
                      .toList();

                  return Stack(children: [
                    Align(child: ProductListWheel(listProducts: listProducts)),
                    const Align(
                        alignment: Alignment.topCenter,
                        child: _ChooseOfficeChaireCategory()),
                  ]);
                })),
        const DialogShoppingBasket(),
      ],
    );
  }
}

class _ChooseOfficeChaireCategory extends StatelessWidget {
  const _ChooseOfficeChaireCategory();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.12,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _ChooseCategoryButton(
            assetPath: Assets.appComponents.svg.chair4,
            enumSelectOfficeChairCategory: EnumSelectOfficeChairCategory.normal,
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          _ChooseCategoryButton(
            assetPath: Assets.appComponents.svg.chairHochlehner,
            enumSelectOfficeChairCategory:
                EnumSelectOfficeChairCategory.hochlehner,
          ),
        ]),
      ),
    );
  }
}

class _ChooseCategoryButton extends StatelessWidget {
  const _ChooseCategoryButton({
    required this.assetPath,
    required this.enumSelectOfficeChairCategory,
  });

  final String assetPath;
  final EnumSelectOfficeChairCategory enumSelectOfficeChairCategory;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitChooseOfficeChair, EnumSelectOfficeChairCategory>(
        builder: (context, state) {
      return InkWell(
        onTap: () {
          context
              .read<CubitChooseOfficeChair>()
              .change(enumSelectOfficeChairCategory);
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: state == enumSelectOfficeChairCategory
                  ? Colors.white
                  : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
              )),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(assetPath),
          ),
        ),
      );
    });
  }
}

class ProductListWheel extends StatefulWidget {
  const ProductListWheel({super.key, required this.listProducts});

  final List<Product>? listProducts;

  @override
  State<ProductListWheel> createState() => _ProductListWheelState();
}

class _ProductListWheelState extends State<ProductListWheel> {
  late FixedExtentScrollController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = FixedExtentScrollController();
    log('initState - createAnimationController');
  }

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollViewX.useDelegate(
      clipBehavior: Clip.none,
      controller: controller,
      diameterRatio: 10,
      squeeze: 0.95,
      physics: const FixedExtentScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemExtent: MediaQuery.sizeOf(context).width * 0.75,
      childDelegate: ListWheelChildLoopingListDelegate(
          children: [...widget.listProducts ?? const Iterable.empty()]),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
    log('dispose Bürodrehstühle Widget');
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<FixedExtentScrollController>(
        'controller', controller));
  }
}

class Product extends StatefulWidget {
  const Product(
      {super.key,
      required this.picturePath,
      required this.productType,
      required this.price,
      required this.name});

  final String picturePath;
  final String name;
  final EnumCategoryOfficeChair productType;
  final double price;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //precacheImage(AssetImage(widget.picturePath), context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(offset: Offset(5, 5), color: Colors.grey)
          ]),
      child: InkWell(
        onTap: () => context.goNamed(
            '${AppGoRouter.buerostuehle.name}/${AppGoRouter.product.title}',
            queryParameters: <String, String>{
              'productNumber': widget.picturePath
            }),
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.05),
            child: Column(
              children: [
                _ProductPicture(widget: widget),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CategoryProductName(
                    name: widget.name,
                    constraints: constraints,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        'Preis:  ${widget.price.getCurrency()}',
                        style: AppTextStyle.bold16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture({
    required this.widget,
  });

  final Product widget;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitOfficeChair, StateCategory, Uint8List?>(
        selector: (state) => state.mapOrNull(
            success: (stateSuccess) => stateSuccess.productCategory?.listProduct
                .where((element) => element.name == widget.name)
                .first
                .pictureByte),
        builder: (context, state) {
          return CategoryProductPictureMemoryImage(
            uint8list: state,
          );
        });
  }
}
