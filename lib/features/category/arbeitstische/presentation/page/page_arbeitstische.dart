import 'dart:developer';

import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globalPageWidget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/list_wheel_scroll_view_x.dart';
import 'package:flutter/material.dart';

class PageArbeitsTische extends StatelessWidget {
  const PageArbeitsTische({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(appBarContext: context, body: _Arbeitstische());
  }
}

class _Arbeitstische extends StatefulWidget {
  _Arbeitstische({super.key});

  @override
  State<_Arbeitstische> createState() => _ArbeitstischeState();
}

class _ArbeitstischeState extends State<_Arbeitstische> {
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
    return Center(
      child: ListWheelScrollViewX.useDelegate(
        controller: controller,
        diameterRatio: 10,
        squeeze: 0.9,
        physics: FixedExtentScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemExtent: MediaQuery.sizeOf(context).width * 0.8,
        childDelegate: ListWheelChildLoopingListDelegate(children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black)),
          ),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
