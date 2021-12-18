import 'package:flutter/material.dart';

class ButtonTest extends StatefulWidget {
  const ButtonTest({Key? key}) : super(key: key);

  @override
  _ButtontestState createState() => _ButtontestState();
}

class _ButtontestState extends State<ButtonTest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(onPressed: () {}, child: const Text("elevated Button")),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text("发布内容"),
          icon: const Icon(Icons.add),
        ),
        TextButton(onPressed: () {}, child: const Text("TextButton")),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.info),
            label: const Text('详情')),
        OutlinedButton(onPressed: () {}, child: const Text('OutLinedButton')),
        IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
      ],
    );
  }
}
