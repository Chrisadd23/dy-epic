import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/cubit_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/features/category/arbeitstische/presentation/cubit/state_arbeitstische.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageArbeitstische extends StatelessWidget {
  const PageArbeitstische({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CubitArbeitstische()..load(),
        child: GlobalScaffold(
            appBarContext: context, body: const _Arbeitstische()));
  }
}

class _Arbeitstische extends StatefulWidget {
  const _Arbeitstische();

  @override
  State<_Arbeitstische> createState() => _ArbeitstischeState();
}

class _ArbeitstischeState extends State<_Arbeitstische> {
  late FixedExtentScrollController controller;

  @override
  void initState() {
    controller = FixedExtentScrollController();
    super.initState();

    log('initState - createAnimationController');
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CubitArbeitstische, StateArbeitstische,
        ProductCategory?>(
      selector: (state) => state.productCategory,
      builder: (context, state) => ListWheelScrollViewX.useDelegate(
        controller: controller,
        diameterRatio: 10,
        squeeze: 0.95,
        physics: const FixedExtentScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemExtent: MediaQuery.sizeOf(context).width * 0.75,
        childDelegate: ListWheelChildLoopingListDelegate(children: [
          if (state?.listProduct != null)
            ...state!.listProduct.map((product) {
              return _Product(
                picturePath: product.picturePath,
              );
            }).toList(),
        ]),
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

class _Product extends StatelessWidget {
  const _Product({
    required this.picturePath,
  });

  final String picturePath;

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
                  child: Image(
                      image: AssetImage(Assets.products.arbeitstische
                          .slavonischeEicheSchwarz.path)),
                ),
              ),
            ),
          ],
        ));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picturePath', picturePath));
  }
}
