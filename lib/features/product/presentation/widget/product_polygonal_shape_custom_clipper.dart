import 'package:flutter/material.dart';

class ProductPolygonalShapeCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height * 0.3)
      ..lineTo(size.width * 0.1, size.height * 0.075)
      ..lineTo(size.width * 0.3, 0)
      ..lineTo(size.width * 0.7, 0)
      ..lineTo(size.width * 0.9, size.height * 0.075)
      ..lineTo(size.width, size.height * 0.3)
      ..lineTo(size.width, size.height * 0.7)
      ..lineTo(size.width * 0.9, size.height * 0.925)
      ..lineTo(size.width * 0.7, size.height)
      ..lineTo(size.width * 0.3, size.height)
      ..lineTo(size.width * 0.1, size.height * 0.925)
      ..lineTo(0, size.height * 0.7)
      ..lineTo(0, size.height * 0.3) // Start unten links
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
