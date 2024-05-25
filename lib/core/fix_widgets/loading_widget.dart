import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget(
      {super.key, this.diameter = 100, this.color = Colors.white});

  final double diameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: SpinKitSpinningLines(
          color: color,
          size: diameter,
          itemCount: 8,
          duration: const Duration(seconds: 5),
        ),
      );
    });
  }
}
