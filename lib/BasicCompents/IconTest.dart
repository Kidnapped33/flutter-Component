import 'package:flutter/material.dart';

class Icontest extends StatefulWidget {
  const Icontest({Key? key}) : super(key: key);

  @override
  _IcontestState createState() => _IcontestState();
}

class _IcontestState extends State<Icontest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Icon(Icons.accessible, color: Colors.green),
            Icon(Icons.error, color: Colors.green),
            Icon(Icons.fingerprint, color: Colors.green),
          ],
        ),
      ],
    );
  }
}
