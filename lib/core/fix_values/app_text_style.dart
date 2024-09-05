import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle get regular12 => const TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      shadows: []);

  static TextStyle get regular14 => const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      shadows: []);

  static TextStyle get regular16 => const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      shadows: []);

  static TextStyle get regular18 => const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.normal,
      shadows: []);

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

  static TextStyle get bold22 =>
      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);

  static TextStyle get bold16 =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  static TextStyle get bold14 =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  static TextStyle get bold12 =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
}
