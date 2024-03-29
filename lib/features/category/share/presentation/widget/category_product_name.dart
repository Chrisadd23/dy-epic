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
              top: constraints.maxHeight * 0.25,
            ),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
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
