import 'package:flutter/material.dart';

class ChatMessageInfo extends StatelessWidget {
  const ChatMessageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
    );
  }
}
