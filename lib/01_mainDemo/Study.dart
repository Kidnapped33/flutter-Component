import 'package:flutter/material.dart';

class Study extends StatelessWidget {
  const Study({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text("44444444444444"),
      Text(
        "8888888888888888888888888888888888888888888888888888888888",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      Text("0000000000000000", textScaleFactor: 1.5),
    ]);
  }
}
