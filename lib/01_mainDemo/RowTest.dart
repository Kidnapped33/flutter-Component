import 'package:flutter/material.dart';

class RowTest extends StatefulWidget {
  const RowTest({Key? key}) : super(key: key);

  @override
  _RowTestState createState() => _RowTestState();
}

class _RowTestState extends State<RowTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Row 页")),
        body: Container(
            width: double.infinity,
            height: 300,
            color: Colors.orange,
            child: Row(
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
