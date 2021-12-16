import 'package:flutter/material.dart';

class Switchtest extends StatefulWidget {
  const Switchtest({Key? key}) : super(key: key);

  @override
  _SwitchtestState createState() => _SwitchtestState();
}

class _SwitchtestState extends State<Switchtest> {
  bool _switchSelected = true; //维护单选开关状态
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              _switchSelected = value;
            });
          },
        )
      ],
    );
  }
}
