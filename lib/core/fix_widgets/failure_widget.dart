import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.failure});

  final String failure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.error_outline_rounded,
              size: 60,
              color: Colors.red,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              failure,
              textAlign: TextAlign.center,
              style: AppTextStyle.colorWhiteSize20ShadowBlack
                  .copyWith(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('failure', failure));
  }
}
