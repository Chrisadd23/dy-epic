import 'package:flutter/material.dart';

class GlobalScaffoldMessenger {
  const GlobalScaffoldMessenger._();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> error(
          {required BuildContext context,
          required String information,
          Color? color,
          Gradient? gradient,
          TextStyle? textStyle}) =>
      ScaffoldMessenger.of(context).showSnackBar(_snackBar(
          information: information,
          color: color,
          gradient: gradient,
          textStyle: textStyle));

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> success(
          {required BuildContext context,
          required String information,
          Color? color,
          Gradient? gradient,
          TextStyle? textStyle}) =>
      ScaffoldMessenger.of(context).showSnackBar(_snackBar(
          information: information,
          color: color,
          gradient: gradient,
          textStyle: textStyle));

  static SnackBar _snackBar(
          {required String information,
          Color? color,
          Gradient? gradient,
          TextStyle? textStyle}) =>
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ColoredBox(
              color: Colors.white,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: color,
                  gradient: gradient,
                  border: Border.all(
                      color: Colors.black.withOpacity(0.5), width: 3),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withAlpha(150),
                        spreadRadius: 1,
                        offset: const Offset(0, 0),
                        blurStyle: BlurStyle.outer)
                  ],
                ),
                child: Center(
                  child: Text(
                    information,
                    style: textStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
      );
}
