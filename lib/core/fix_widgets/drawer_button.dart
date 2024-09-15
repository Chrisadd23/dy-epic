import 'package:app_flutter_produkt_bestellen/core/global_widgets/widget/local_neumorphic_button.dart';
import 'package:flutter/material.dart';

class FixDrawerButton extends StatelessWidget {
  const FixDrawerButton(
      {super.key,
      required this.title,
      required this.height,
      required this.function});

  final String title;
  final double height;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      child: LocalNeumorphicButton(
        borderRadius: 10,
        duration: const Duration(milliseconds: 50),
        functionDuration: const Duration(milliseconds: 150),
        onPressedBasedOnDuration: function,
        child: Container(
          height: height,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
