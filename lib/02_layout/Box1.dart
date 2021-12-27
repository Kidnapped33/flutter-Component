import 'package:flutter/material.dart';

class Box1 extends StatefulWidget {
  const Box1({Key? key}) : super(key: key);
  @override
  _Box1State createState() => _Box1State();
}

class _Box1State extends State<Box1> {
  bool _active = false;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: const TextStyle(
              fontSize: 32.0,
              color: Colors.blue,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        width: 200,
        height: 200,
        // padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.fromLTRB(30, 20, 50, 100),
        decoration:
            BoxDecoration(color: _active ? Colors.amber[700] : Colors.cyan),
      ),
    );
  }
}
