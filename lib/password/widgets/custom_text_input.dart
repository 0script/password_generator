import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          color: Colors.black87),
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: 'Password Generator'),
          )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.copy)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.loop))
        ],
      ),
    );
  }
}
