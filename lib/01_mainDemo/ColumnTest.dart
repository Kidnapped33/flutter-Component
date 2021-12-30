import 'package:flutter/material.dart';

class Columntest extends StatefulWidget {
  const Columntest({Key? key}) : super(key: key);

  @override
  _ColumntestState createState() => _ColumntestState();
}

class _ColumntestState extends State<Columntest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Column 页")),
        body: Container(
            width: 300,
            color: Colors.orange,
            child: Column(
              //主轴的对齐方式
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //横轴的对齐方式
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.beach_access_sharp,
                  size: 20,
                ),
                Icon(
                  Icons.beach_access_sharp,
                  size: 30,
                ),
                Icon(
                  Icons.beach_access_sharp,
                  size: 50,
                ),
              ],
            )));
  }
}
