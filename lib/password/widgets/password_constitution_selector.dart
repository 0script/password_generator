import 'package:flutter/material.dart';

class PasswordConstitutionSelector extends StatefulWidget {
  const PasswordConstitutionSelector({super.key});

  @override
  State<PasswordConstitutionSelector> createState() =>
      _PasswordConstitutionSelectorState();
}

class _PasswordConstitutionSelectorState
    extends State<PasswordConstitutionSelector> {
  bool? minletter = true;
  bool? majletter = true;
  bool? number = true;
  bool? specialchar = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: const EdgeInsets.all(20)),
        const Text('Select Password Constitution',
            style: TextStyle(fontSize: 25, color: Colors.black)),
        CheckboxListTile(
            activeColor: Colors.blueAccent,
            title: const Text(
              'Lowercase letter (a,b,c...)',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            value: minletter,
            onChanged: (bool? value) {
              setState(() {
                minletter = value;
              });
            }),
        CheckboxListTile(
            activeColor: Colors.blueAccent,
            title: const Text('Capital letter (A,B,C...)',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            value: majletter,
            onChanged: (bool? value) {
              setState(() {
                majletter = value;
              });
            }),
        CheckboxListTile(
            activeColor: Colors.blueAccent,
            title: const Text('Figure (1,2,3...)',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            value: number,
            onChanged: (bool? value) {
              setState(() {
                number = value;
              });
            }),
        CheckboxListTile(
            activeColor: Colors.blueAccent,
            title: const Text('Special characters (+,-,?...)',
                style: TextStyle(fontSize: 20, color: Colors.black)),
            value: specialchar,
            onChanged: (bool? value) {
              setState(() {
                specialchar = value;
              });
            })
      ],
    );
  }
}
