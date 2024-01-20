import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget(
      {super.key, this.firstWidth = 70, this.secondWidth = 100});

  final double? firstWidth;
  final double? secondWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SpinKitCircle(
                duration: const Duration(seconds: 2),
                size: firstWidth ?? constraints.maxWidth * 0.7,
                itemBuilder: (context, index) {
                  final colors = [
                    const Color.fromRGBO(247, 165, 64, 1),
                    const Color.fromRGBO(95, 95, 95, 0.6)
                  ];
                  final color = colors[index % colors.length];

                  return DecoratedBox(
                      decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1),
                  ));
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SpinKitSpinningLines(
                color: Colors.white,
                size: secondWidth ?? constraints.maxWidth * 0.3,
                itemCount: 8,
                duration: const Duration(seconds: 5),
              ),
            )
          ],
        ),
      );
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('firstWidth', firstWidth));
    properties.add(DoubleProperty('secondWidth', secondWidth));
  }
}
