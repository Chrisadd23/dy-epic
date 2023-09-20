import 'package:flutter/material.dart';

class ShowProduct extends StatelessWidget {
  const ShowProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.7,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 2,
              color: Colors.black.withOpacity(0.2),
              style: BorderStyle.solid)),
      child: const Center(
        child: Text(
          '1',
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
