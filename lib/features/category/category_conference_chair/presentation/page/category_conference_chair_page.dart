import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/extension/double.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/domain/entity/entity_konferenzstuehle.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_conference_chair/presentation/cubit/category_conference_chair_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_name.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_picture.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PageKonferenzstuehle extends StatelessWidget {
  const PageKonferenzstuehle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: const _BlocProviderConferenceChair());
  }
}

class _BlocProviderConferenceChair extends StatelessWidget {
  const _BlocProviderConferenceChair();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitConferenceChair>(
      create: (BuildContext context) => getIt<CubitConferenceChair>()..load(),
      child: GlobalScaffold(
          appBarContext: context,
          body: const Stack(
            children: [
              _BlocBuilderConferenceChair(),
              DialogShoppingBasket(),
            ],
          )),
    );
  }
}

class _BlocBuilderConferenceChair extends StatelessWidget {
  const _BlocBuilderConferenceChair();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitConferenceChair, StateCategory>(
        builder: (context, state) => state.map(
              loading: (loading) => const LoadingWidget(
                firstWidth: 110,
                secondWidth: 60,
              ),
              failure: (failure) => FailureWidget(
                  failure: failure.failure.when(
                      message: (message) => message ?? '',
                      databaseError: (databaseError) => databaseError ?? '')),
              success: (successState) {
                final listProducts =
                    successState.productCategory?.listProduct.map((product) {
                  return Product(
                    picturePath: product.picturePath,
                    productType:
                        product.productType as EnumCategoryConferenceChair,
                    price: product.price,
                    name: product.name,
                  );
                }).toList();
                return _Konferenzstuehle(listProducts: listProducts);
              },
            ));
  }
}

class _Konferenzstuehle extends StatefulWidget {
  const _Konferenzstuehle({required this.listProducts});

  final List<Product>? listProducts;

  @override
  State<_Konferenzstuehle> createState() => _KonferenzstuehleState();
}

class _KonferenzstuehleState extends State<_Konferenzstuehle> {
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
    log('dispose ArbeitstischeState');
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<FixedExtentScrollController>(
        'controller', controller));
  }
}

class Product extends StatefulWidget {
  const Product({
    super.key,
    required this.picturePath,
    required this.productType,
    required this.price,
    required this.name,
  });

  final double price;
  final String picturePath;
  final EnumCategoryConferenceChair productType;
  final String name;

  @override
  State<Product> createState() => _ProductState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picturePath', picturePath));
    properties.add(
        EnumProperty<EnumCategoryConferenceChair>('productType', productType));
    properties.add(DoubleProperty('price', price));
    properties.add(StringProperty('name', name));
  }
}

class _ProductState extends State<Product> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
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
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.05),
            child: Stack(
              children: [
                _ProductPicture(widget: widget),
                CategoryProductName(name: widget.name),
                Align(
                  alignment: Alignment.center,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: constraints.maxHeight * 0.5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FittedBox(
                                child: Text(
                              'Preis:  ${widget.price.getCurrency()}',
                              style: AppTextStyle.bold18,
                            )),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }));
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

class _ProductPicture extends StatelessWidget {
  const _ProductPicture({
    required this.widget,
  });

  final Product widget;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitConferenceChair, StateCategory, Uint8List?>(
        selector: (state) => state.mapOrNull(
            success: (stateSuccess) => stateSuccess.productCategory?.listProduct
                .where((element) => element.picturePath == widget.picturePath)
                .first
                .pictureByte),
        builder: (context, state) {
          return CategoryProductPictureMemoryImage(
              uint8list: state,
              function: () {
                context.goNamed(
                    '${AppGoRouter.konferenzstuehle.name}/${AppGoRouter.product.name}',
                    queryParameters: <String, String>{
                      'productNumber': widget.picturePath
                    });
              });
        });
  }
}
