import 'package:flutter/cupertino.dart';

class ProductInfoCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height * 0.29) // Start unten links
      ..cubicTo(
        size.width * 0.3, size.height * 0.54, // Erster Kontrollpunkt
        size.width * 0.7, size.height * 0.24, // Zweiter Kontrollpunkt
        size.width, size.height * 0.49, // Endpunkt
      )
      ..lineTo(size.width, size.height) // Linie nach unten rechts
      ..lineTo(0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
