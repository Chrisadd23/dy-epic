import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryProductName extends StatelessWidget {
  const CategoryProductName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.only(
                top: constraints.maxHeight * 0.15,
                left: constraints.maxWidth * 0.05,
                right: constraints.maxWidth * 0.05),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('name', name));
  }
}
