import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:flutter/material.dart';

class NoOrderExistInformationContainer extends StatelessWidget {
  const NoOrderExistInformationContainer(
      {super.key, required this.informationText});

  final String informationText;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Container(
              margin:
                  EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.3),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: constraints.maxWidth * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  color: Colors.white),
              child: Center(
                child: Text(
                  informationText,
                  style: AppTextStyle.bold18,
                  textAlign: TextAlign.center,
                ),
              ),
            ));
  }
}
