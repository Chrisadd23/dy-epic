import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryProductName extends StatelessWidget {
  const CategoryProductName(
      {super.key, required this.name, required this.constraints});

  final String name;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
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
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('name', name));
  }
}
