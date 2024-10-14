import 'package:flutter/material.dart';
import 'package:pasword_generator/password/widgets/custom_text_input.dart';
import 'package:pasword_generator/password/widgets/password_constitution_selector.dart';
import 'package:pasword_generator/password/widgets/password_width_selector.dart';

class MainPasswordGen extends StatelessWidget {
  const MainPasswordGen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      width: screenwidth / 1.3,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          CustomTextInput(controller: _controller),
          const Row(
            children: [
              Expanded(child: PasswordWidthSelector()),
              Expanded(child: PasswordConstitutionSelector())
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: FloatingActionButton.large(
                    onPressed: () {},
                    child: const Text('Generate Password'),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: FloatingActionButton.large(
                    onPressed: () {},
                    child: const Text('Save Password'),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
