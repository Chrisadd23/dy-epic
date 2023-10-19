import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/cubit_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/state_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PageWorkTables extends StatelessWidget {
  const PageWorkTables({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<CubitWorkTables>()..load(),
        child:
            GlobalScaffold(appBarContext: context, body: const _WorkTables()));
  }
}

class _WorkTables extends StatelessWidget {
  const _WorkTables();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitWorkTables, StateWorkTable, ProductCategory?>(
      selector: (state) => state.productCategory,
      builder: (context, state) {
        final listProducts = state?.listProduct.map((product) {
          return Product(
            picturePath: product.picturePath,
            productName: product.productName,
          );
        }).toList();
        return ProductListWheel(listProducts: listProducts);
      },
    );
  }
}

class ProductListWheel extends StatefulWidget {
  const ProductListWheel({
    super.key,
    required this.listProducts,
  });

  final List<Product>? listProducts;

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
    required this.productName,
  });

  final String picturePath;
  final String productName;

  @override
  State<Product> createState() => _ProductState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picturePath', picturePath));
    properties.add(StringProperty('productName', productName));
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
        height: MediaQuery.sizeOf(context).height * 0.7,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(offset: Offset(5, 5), color: Colors.grey)
            ]),
        child: Stack(
          children: [
            const _ProductColors(),
            _ProductPicture(widget: widget),
            _ProductName(widget: widget),
            Align(
                alignment: Alignment.centerLeft,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Padding(
                    padding: EdgeInsets.only(
                        top: constraints.maxHeight * 0.43,
                        left: constraints.maxWidth * 0.05),
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

  final Product widget;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.only(top: constraints.maxHeight * 0.07),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                widget.productName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  image: AssetImage(widget.picturePath),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: LayoutBuilder(builder: (context, constraints) {
            return Padding(
              padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.2),
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0),
                radius: constraints.maxHeight * 0.23,
                child: InkWell(
                  hoverColor: Colors.red,
                  onTap: () => context.goNamed(AppGoRouter.product.name,
                      extra: widget.picturePath),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}

class _ProductColors extends StatelessWidget {
  const _ProductColors();

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
                  child: Container(
                decoration: BoxDecoration(
                    color: AppColors.whiteD6D6D7,
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: constraints.maxHeight * 0.1,
                  width: constraints.maxWidth * 0.1,
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: AppColors.grey8D8D8E,
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: constraints.maxHeight * 0.1,
                  width: constraints.maxWidth * 0.1,
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: AppColors.black080808,
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: constraints.maxHeight * 0.1,
                  width: constraints.maxWidth * 0.1,
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
