import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:flutter/cupertino.dart';

class ProductPageBackgroundCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = AppColors.greyD7D7D7;

    final paint2 = Paint()
      ..style = PaintingStyle.fill
      ..color = AppColors.silver989899;

    final paint3 = Paint()
      ..style = PaintingStyle.fill
      ..color = AppColors.grey8D8D8E;

    final path = Path();
    final path2 = Path();
    final path3 = Path();

    getPointsSubLine({required double partOfHeight}) {
      return <Offset>[
        const Offset(0, 0),
        Offset(size.width, 0),
        Offset(size.width, size.height * partOfHeight),
      ];
    }

    final offsetList1 = getPointsSubLine(partOfHeight: 0.45);
    final offsetList2 = getPointsSubLine(partOfHeight: 0.47);
    final offsetList3 = getPointsSubLine(partOfHeight: 0.49);

    for (int i = 0; i < 3; i++) {
      path.lineTo(
        offsetList1[i].dx,
        offsetList1[i].dy,
      );
    }
    for (int i = 0; i < 3; i++) {
      path2.lineTo(
        offsetList2[i].dx,
        offsetList2[i].dy,
      );
    }
    for (int i = 0; i < 3; i++) {
      path3.lineTo(
        offsetList3[i].dx,
        offsetList3[i].dy,
      );
    }

    path
      ..cubicTo(
        size.width * 0.7, size.height * 0.2, // Erster Kontrollpunkt
        size.width * 0.3, size.height * 0.5, // Zweiter Kontrollpunkt
        0, size.height * 0.25, // Endpunkt
      )
      ..lineTo(
        0,
        0,
      );
    path2
      ..cubicTo(
        size.width * 0.7, size.height * 0.22, // Erster Kontrollpunkt
        size.width * 0.3, size.height * 0.52, // Zweiter Kontrollpunkt
        0, size.height * 0.27, // Endpunkt
      )
      ..lineTo(
        0,
        0,
      );
    path3
      ..cubicTo(
        size.width * 0.7, size.height * 0.24, // Erster Kontrollpunkt
        size.width * 0.3, size.height * 0.54, // Zweiter Kontrollpunkt
        0, size.height * 0.29, // Endpunkt
      )
      ..lineTo(
        0,
        0,
      );
    canvas
      ..drawPath(path3, paint3)
      ..drawPath(path2, paint2)
      ..drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
