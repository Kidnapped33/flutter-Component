import 'package:flutter/material.dart';

class Checkboxtest extends StatefulWidget {
  const Checkboxtest({Key? key}) : super(key: key);

  @override
  _CheckboxtestState createState() => _CheckboxtestState();
}

class _CheckboxtestState extends State<Checkboxtest> {
  bool _checkboxSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Checkbox(
            value: _checkboxSelected,
            onChanged: (v) {
              setState(() {
                _checkboxSelected = v!;
              });
            })
      ],
    );
  }
}
