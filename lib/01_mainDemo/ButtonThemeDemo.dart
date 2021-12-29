import 'package:flutter/material.dart';

class Buttonthemedemo extends StatelessWidget {
  const Buttonthemedemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onLongPress: () {
              print("长按");
            },
            onPressed: () {
              print('点击');
            },
            child: const Text("TextButton")),
      ],
    );
  }
}
