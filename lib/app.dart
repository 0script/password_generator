import 'package:flutter/material.dart';
import 'package:pasword_generator/password/widgets/custom_text_input.dart';
import 'package:pasword_generator/password/views/main_password_gen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          leading: const Icon(
            Icons.password_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Password Generator',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: const IntrinsicHeight(
                  child: Center(
                    child: MainPasswordGen(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
