import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.failure});

  final String failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(failure),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('failure', failure));
  }
}
