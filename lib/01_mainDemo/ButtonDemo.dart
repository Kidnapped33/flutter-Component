import 'package:flutter/material.dart';

class Buttondemo extends StatelessWidget {
  const Buttondemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: () {}, child: const Text("TextButton")),
        TextButton(
            onPressed: () {},
            child: const Text("TextButton - style"),
            style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 30)),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.orange;
                }
                return Colors.blue;
              }),
            )),
        ElevatedButton(onPressed: () {}, child: const Text("ElevatedButton")),
        OutlinedButton(onPressed: () {}, child: const Text('OutlineButton')),
        BackButton(onPressed: () {}),
        CloseButton(onPressed: () {}),
        IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit)),
        FloatingActionButton(
            onPressed: () {}, child: const Text('FloatingActionButton')),
      ],
    );
  }
}
