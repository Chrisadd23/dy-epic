import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/domain/entity/entity_buerodrehstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_buerostuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/buerostuehle/presentation/cubit/cubit_choose_office_chair.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PageBuerostuehle extends HookWidget {
  const PageBuerostuehle({super.key, this.enumSelectOfficeChairCategory});

  final EnumSelectOfficeChairCategory? enumSelectOfficeChairCategory;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitChooseOfficeChair>(
      create: (context) => getIt<CubitChooseOfficeChair>(),
      child: const _BlocBuilderChooseOfficeChair(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<EnumSelectOfficeChairCategory?>(
        'enumSelectOfficeChairCategory', enumSelectOfficeChairCategory));
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
          : _BlocPrividerCubitChairHochlehner(
              selectedCategory: state,
            );
    });
  }
}

class _BlocPrividerCubitChairHochlehner extends StatelessWidget {
  const _BlocPrividerCubitChairHochlehner({
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

class _BlocBuilderBuerostuehle extends StatelessWidget {
  const _BlocBuilderBuerostuehle();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitOfficeChair, StateCategory>(
        builder: (context, state) {
      final listProducts = state.productCategory?.listProduct
          .map((product) => Product(
                productType: product.productType as EnumCategoryOfficeChair,
                picturePath: product.picturePath,
                price: product.price,
                name: product.name,
              ))
          .toList();
      return Stack(children: [
        ProductListWheel(listProducts: listProducts),
        const _ChooseOfficeChaireCategory(),
      ]);
    });
  }
}

class _ChooseOfficeChaireCategory extends StatelessWidget {
  const _ChooseOfficeChaireCategory();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('assetPath', assetPath));
    properties.add(EnumProperty<EnumSelectOfficeChairCategory>(
        'enumSelectOfficeChairCategory', enumSelectOfficeChairCategory));
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picturePath', picturePath));
    properties
        .add(EnumProperty<EnumCategoryOfficeChair>('productType', productType));
    properties.add(DoubleProperty('price', price));
    properties.add(StringProperty('name', name));
  }
}

class _ProductState extends State<Product> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    precacheImage(AssetImage(widget.picturePath), context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.6,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(offset: Offset(5, 5), color: Colors.grey)
          ]),
      child: Stack(
        children: [
          _ProductPicture(widget: widget),
          _ProductName(widget: widget),
          Align(
            alignment: Alignment.center,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.43,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          'Preis:  ${NumberFormat.currency(locale: 'de_DE', symbol: '€', decimalDigits: 2).format(widget.price)}',
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picturePath', widget.picturePath));
  }
}

class _ProductName extends StatelessWidget {
  const _ProductName({
    required this.widget,
  });

  final Product widget;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.only(
                top: constraints.maxHeight * 0.15,
                left: constraints.maxWidth * 0.05,
                right: constraints.maxWidth * 0.05),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                widget.productType.name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }));
  }
}

class _ProductPicture extends StatelessWidget {
  const _ProductPicture({
    required this.widget,
  });

  final Product widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.2),
            child: LayoutBuilder(
              builder: (context, constraints) =>
                  // navigation Test
                  Container(
                height: constraints.maxHeight * 0.9,
                width: constraints.maxWidth * 0.9,
                margin: EdgeInsets.only(bottom: constraints.maxHeight * 0.2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 3),
                        blurStyle: BlurStyle.outer),
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, -3),
                        blurStyle: BlurStyle.outer)
                  ],
                  border: Border.all(
                      color: Colors.black45,
                      strokeAlign: BorderSide.strokeAlignInside),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(widget.picturePath),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.43),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: constraints.maxHeight * 0.23,
                  foregroundColor: Colors.transparent,
                  child: InkWell(
                    hoverColor: Colors.red,
                    onTap: () {
                      context.goNamed(
                          '${AppGoRouter.buerostuehle.name}/${AppGoRouter.product.name}',
                          extra: widget.name);
                    },
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
