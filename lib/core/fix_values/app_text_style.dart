import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle get colorBlackSize20ShadowWhite =>
      const TextStyle(color: Colors.black, fontSize: 20, shadows: [
        BoxShadow(offset: Offset(0, 1), color: Colors.white),
        BoxShadow(offset: Offset(0, -1), color: Colors.white),
        BoxShadow(offset: Offset(1, 0), color: Colors.white),
        BoxShadow(offset: Offset(-1, 0), color: Colors.white),
      ]);

  static TextStyle get colorWhiteSize20ShadowBlack =>
      const TextStyle(color: Colors.white, fontSize: 20, shadows: [
        BoxShadow(offset: Offset(0, 1), color: Colors.black),
        BoxShadow(offset: Offset(0, -1), color: Colors.black),
        BoxShadow(offset: Offset(1, 0), color: Colors.black),
        BoxShadow(offset: Offset(-1, 0), color: Colors.black),
      ]);

  static TextStyle get bold18 =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  static TextStyle get bold16 =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
}
