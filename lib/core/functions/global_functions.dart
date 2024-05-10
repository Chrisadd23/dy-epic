import 'package:flutter/material.dart';

class ShowMenu<T> {}

Future<T?> showColorMenu<T>(BuildContext context, List<T>? list, Widget widget,
    [EdgeInsets? padding, double? height, double? width]) async {
  return showDialog<T>(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Container(
              height: height ?? MediaQuery.sizeOf(context).height * 0.11,
              width: width ?? MediaQuery.sizeOf(context).width * 0.785,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent),
              child: widget,
            ),
          ),
        );
      });
}
