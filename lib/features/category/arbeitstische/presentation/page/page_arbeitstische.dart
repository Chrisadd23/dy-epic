import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/cubit_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/state_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        final listProducts = state!.listProduct.map((product) {
          return Product(
            picturePath: product.picturePath,
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

  final List<Product> listProducts;

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
      childDelegate:
          ListWheelChildLoopingListDelegate(children: [...widget.listProducts]),
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
  });

  final String picturePath;

  @override
  State<Product> createState() => _ProductState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picturePath', picturePath));
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Image(image: AssetImage(widget.picturePath)),
                ),
              ),
            ),
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
