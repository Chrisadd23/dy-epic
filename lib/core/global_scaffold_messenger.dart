import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:flutter/material.dart';

class GlobalScaffoldMessenger {
  const GlobalScaffoldMessenger._();

  static error({
    required BuildContext context,
    required String information,
    Color? color,
    Gradient? gradient,
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(_snackBar(
          information: information, color: color, gradient: gradient));

  static success(
          {required BuildContext context, required String information, t}) =>
      ScaffoldMessenger.of(context)
          .showSnackBar(_snackBar(information: information));

  static SnackBar _snackBar(
          {required String information, Color? color, Gradient? gradient}) =>
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ColoredBox(
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  gradient: gradient,
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.5), width: 3),
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
                    style: AppTextStyle.bold22
                        .copyWith(color: Colors.red, shadows: [
                      const BoxShadow(
                          color: Colors.white,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(0, 2)),
                    ]),
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
