import 'dart:ffi';

import 'package:flutter/material.dart';

class PasswordWidthSelector extends StatefulWidget {
  const PasswordWidthSelector({super.key});

  @override
  State<PasswordWidthSelector> createState() => _PasswordWidthSelectorState();
}

class _PasswordWidthSelectorState extends State<PasswordWidthSelector> {
  double slidevalue = 12;

  String returnSlideValue(double value) {
    return value.round().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.all(20)),
        const Text(
          'Select Password Width',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        Text(
          returnSlideValue(slidevalue),
          style: const TextStyle(fontSize: 40, color: Colors.black),
        ),
        Slider(
          activeColor: Colors.blueAccent,
          value: slidevalue,
          min: 8,
          max: 40,
          label: slidevalue.round().toString(),
          onChanged: (double value) {
            setState(() {
              slidevalue = value;
            });
          },
        )
      ],
    );
  }
}
