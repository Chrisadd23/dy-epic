import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/enums.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/failure_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/category_workingtable/presentation/cubit/category_workingtable_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/cubit/state_category_generic.dart';
import 'package:app_flutter_produkt_bestellen/features/category/share/presentation/widget/category_product_picture.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/cubit/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/widget/shopping_basket_dialog.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryWorkingTablePage extends StatelessWidget {
  const CategoryWorkingTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocShoppingBasket>.value(
        value: getIt<BlocShoppingBasket>(),
        child: const _BlocProviderWorkTables());
  }
}

class _BlocProviderWorkTables extends StatelessWidget {
  const _BlocProviderWorkTables();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryWorkingTableCubit>(
        create: (context) => getIt<CategoryWorkingTableCubit>()..load(),
        child: GlobalScaffold(
            appBarContext: context,
            body: const Stack(
              children: [
                _WorkTables(),
                DialogShoppingBasket(),
              ],
            )));
  }
}

class _WorkTables extends StatelessWidget {
  const _WorkTables();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryWorkingTableCubit, StateCategory>(
        builder: (context, state) => state.map(
            loading: (_) => const LoadingWidget(
                  firstWidth: 110,
                  secondWidth: 60,
                ),
            failure: (failure) =>
                FailureWidget(failure: failure.failure.getFailureMessage),
            success: (successState) {
              debugPrint("successState ==> $successState");
              final listProducts =
                  successState.productCategory?.listProduct.map((product) {
                return CategoryProduct(
                  picturePath: product.picturePath,
                  productType: product.productType as EnumCategoryWorkingTable,
                  price: product.price,
                  name: product.name,
                );
              }).toList();

              return listProducts != null
                  ? ProductListWheel(listProducts: listProducts)
                  : const SizedBox.shrink();
            }));
  }
}

class ProductListWheel extends StatefulWidget {
  const ProductListWheel({
    super.key,
    required this.listProducts,
  });

  final List<CategoryProduct> listProducts;

  @override
  State<ProductListWheel> createState() => _ProductListWheelState();
}

class _ProductListWheelState extends State<ProductListWheel> {
  late FixedExtentScrollController controller;

  @override
  void initState() {
    controller = FixedExtentScrollController();
    super.initState();

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
        children: widget.listProducts.toList(),
      ),
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

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({
    required this.picturePath,
    required this.productType,
    required this.price,
    required this.name,
  });

  final String picturePath;
  final EnumCategoryWorkingTable productType;
  final double price;
  final String name;

  @override
  State<CategoryProduct> createState() => CategoryProductState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picturePath', picturePath));
    properties.add(
        EnumProperty<EnumCategoryWorkingTable>('productType', productType));
    properties.add(DoubleProperty('price', price));
    properties.add(StringProperty('name', name));
  }
}

class CategoryProductState extends State<CategoryProduct> {
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
            _ProductColors(product: widget),
            _ProductName(widget: widget),
            Align(
                alignment: Alignment.center,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: constraints.maxHeight * 0.43,
                    ),
                    child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        'Gestellfarben',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                })),
          ],
        ));
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

  final CategoryProduct widget;

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
                'Dekor ${widget.productType.type}',
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

  final CategoryProduct widget;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CategoryWorkingTableCubit, StateCategory, Uint8List?>(
        selector: (state) => state.mapOrNull(
            success: (stateSuccess) => stateSuccess.productCategory?.listProduct
                .where((element) => element.name == widget)
                .first
                .pictureByte),
        builder: (context, state) {
          return CategoryProductPicture(
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

class _ProductColors extends StatelessWidget {
  const _ProductColors({required this.product});

  final CategoryProduct product;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: LayoutBuilder(builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.05,
              ),
              Expanded(
                  child: InkWell(
                onTap: () => context.goNamed(
                    '${AppGoRouter.arbeitstische.name}/${AppGoRouter.product.name}',
                    extra: product.productType,
                    queryParameters: {
                      'color': AppColors.whiteD6D6D7.toString()
                    }),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.whiteD6D6D7,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: SizedBox(
                    height: constraints.maxHeight * 0.1,
                    width: constraints.maxWidth * 0.1,
                  ),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: InkWell(
                onTap: () => context.goNamed(
                    '${AppGoRouter.arbeitstische.name}/${AppGoRouter.product.name}',
                    extra: product.productType,
                    queryParameters: {'color': '${AppColors.grey8D8D8E}'}),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.grey8D8D8E,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: SizedBox(
                    height: constraints.maxHeight * 0.1,
                    width: constraints.maxWidth * 0.1,
                  ),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: InkWell(
                onTap: () => context.goNamed(
                    '${AppGoRouter.arbeitstische.name}/${AppGoRouter.product.name}',
                    extra: product.productType,
                    queryParameters: {'color': '${AppColors.black080808}'}),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.black080808,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: SizedBox(
                    height: constraints.maxHeight * 0.1,
                    width: constraints.maxWidth * 0.1,
                  ),
                ),
              )),
              SizedBox(
                width: constraints.maxWidth * 0.05,
              ),
            ],
          ),
        );
      }),
    );
  }
}
