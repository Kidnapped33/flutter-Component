import 'package:flutter/material.dart';
import 'package:flutter_test1/02_layout/Box1.dart';
// import 'package:flutter_test1/BasicCompents/FocusTestRoute.dart';

import 'package:flutter_test1/BasicCompents/BasicTest.dart';
import 'package:flutter_test1/BasicCompents/ImagesTest.dart';
import 'package:flutter_test1/BasicCompents/ButtonTest.dart';
import 'package:flutter_test1/BasicCompents/TextTest.dart';
import 'package:flutter_test1/BasicCompents/IconTest.dart';
import 'package:flutter_test1/BasicCompents/SwitchTest.dart';
import 'package:flutter_test1/BasicCompents/CheckBoxTest.dart';
import 'package:flutter_test1/BasicCompents/TextField.dart';
import 'package:flutter_test1/BasicCompents/NamePasswordTest.dart';
import 'package:flutter_test1/BasicCompents/NamePasswordTest2.dart';
import 'package:flutter_test1/BasicCompents/FocusTestRoute.dart';
import 'package:flutter_test1/Widget/constraints.dart';
import 'package:flutter_test1/Widget/rowColumn.dart';
import 'package:flutter_test1/Widget/TransformTest.dart';
import 'package:flutter_test1/02_layout/layout.dart';
import 'package:flutter_test1/01_mainDemo/ColumnTest.dart';
import 'package:flutter_test1/02_layout/FlexDemo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: <Widget>[
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ]),
      body:
          // const BasicTest(),
          // const ImagesTest(),
          // const ButtonTest(),
          // const Texttest(),
          // const Icontest(),
          // const Switchtest(),
          // const Checkboxtest(),
          // const Textfield(),
          // const namePasswordTest(),
          const namePasswordTest2(),
      // const Focustestroute(),
      // const Constraints(),
      // const Rowcolumn(),
      // const Transformtest(),
      // const Layout(),
      // const Columntest(),
      // const Box1(),
      // const Flexdemo(),

      // Text(
      //   '$_counter',
      //   style: Theme.of(context).textTheme.headline4,
      // ),

      // body: Center(
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.center,

      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
