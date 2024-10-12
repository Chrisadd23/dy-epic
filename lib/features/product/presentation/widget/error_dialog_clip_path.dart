import 'package:flutter/cupertino.dart';

class ErrorDialogClipPathParent extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 60;

    final Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius * 0.5), clockwise: false)
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius * 0.5), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ErrorDialogClipPathChild extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 60;

    final Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius + 4),
          radius: Radius.circular(radius * 0.5), clockwise: false)
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius - 4),
          radius: Radius.circular(radius * 0.5), clockwise: false)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
