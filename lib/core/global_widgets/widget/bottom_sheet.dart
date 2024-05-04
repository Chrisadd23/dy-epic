import 'dart:async';

import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GlobalBottomSheet extends StatefulWidget {
  const GlobalBottomSheet._({required this.infoText});

  final String infoText;

  static void showGlobalBottomSheet({
    required BuildContext context,
    required String infoText,
  }) =>
      showModalBottomSheet(
        context: context,
        builder: (context) => GlobalBottomSheet._(infoText: infoText),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      );

  @override
  State<GlobalBottomSheet> createState() => _GlobalBottomSheetState();
}

class _GlobalBottomSheetState extends State<GlobalBottomSheet> {
  late final Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 3), () {
      context.pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.zero,
      ),
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: Text(
              widget.infoText,
              style: AppTextStyle.bold18,
            )),
            const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 35,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
