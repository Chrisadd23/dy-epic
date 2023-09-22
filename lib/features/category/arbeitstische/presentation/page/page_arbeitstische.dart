import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageArbeitstische extends StatelessWidget {
  const PageArbeitstische({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(appBarContext: context, body: const _Arbeitstische());
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
    return Center(
      child: ListWheelScrollViewX.useDelegate(
        controller: controller,
        diameterRatio: 10,
        squeeze: 0.95,
        physics: const FixedExtentScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemExtent: MediaQuery.sizeOf(context).width * 0.75,
        childDelegate: ListWheelChildLoopingListDelegate(children: [
          const _ProductContainer(),
          /* Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.2),
                    style: BorderStyle.solid)),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.2),
                    style: BorderStyle.solid)),
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.2),
                    style: BorderStyle.solid)),
            child: const Center(
              child: Text(
                '4',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 2,
                    color: Colors.black.withOpacity(0.2),
                    style: BorderStyle.solid)),
            child: const Center(
              child: Text(
                '5',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),*/
        ]),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();

    log('dispose ArbeitstischeState');
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<FixedExtentScrollController>(
        'controller', controller));
  }
}

class _ProductContainer extends StatelessWidget {
  const _ProductContainer({
    super.key,
  });

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
                  child: Image.asset(
                    Assets.products.arbeitstische.slavonischeEicheSchwarz.path,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
