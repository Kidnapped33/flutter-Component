import 'package:flutter/material.dart';

class Buttondemo extends StatelessWidget {
  const Buttondemo({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
          onPressed: () {
            print("TextButton");
          },
          child: const Text("TextButton")),
      ElevatedButton(
          onPressed: () {
            print("ElevatedButton");
          },
          child: const Text("ElevatedButton")),
      OutlinedButton(
          onPressed: () {
            print("OutlinedButton");
          },
          child: const Text('OutlineButton')),
      BackButton(onPressed: () {
        print("BackButton");
      }),
      CloseButton(onPressed: () {
        print("CloseButton");
      }),
      FloatingActionButton(
          onPressed: () {
            print("FloatingActionButton");
          },
          child: const Text('FloatingActionButton')),
    ]);
  }
}
