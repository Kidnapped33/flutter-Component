import 'package:flutter/material.dart';

class Constraints extends StatefulWidget {
  const Constraints({Key? key}) : super(key: key);

  @override
  _ConstraintsState createState() => _ConstraintsState();
}

class _ConstraintsState extends State<Constraints> {
  Widget redBox = const DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
          minWidth: double.infinity, //宽度尽可能大
          minHeight: 50.0 //最小高度为50像素
          ),
      child: SizedBox(
        height: 5.0,
        child: redBox,
      ),
    );
  }
}
