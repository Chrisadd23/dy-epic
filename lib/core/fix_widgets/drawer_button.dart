import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FixDrawerButton extends StatelessWidget {
  const FixDrawerButton({super.key, required this.title, this.height = 50});

  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/$title');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: height,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurStyle: BlurStyle.inner,
                offset: Offset(0, 2)),
            BoxShadow(
                color: Colors.black,
                blurStyle: BlurStyle.inner,
                offset: Offset(0, -2)),
          ],
          gradient: LinearGradient(
              colors: [Colors.white, Color.fromRGBO(221, 221, 221, 1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(DoubleProperty('height', height));
  }
}
