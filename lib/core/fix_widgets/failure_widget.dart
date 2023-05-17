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
}