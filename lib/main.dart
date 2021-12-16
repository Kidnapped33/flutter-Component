import 'package:flutter/material.dart';
import 'package:flutter_test1/BasicTest.dart';
import 'package:flutter_test1/CheckBoxTest.dart';
import 'package:flutter_test1/IconTest.dart';
import 'package:flutter_test1/ImagesTest.dart';
import 'package:flutter_test1/ButtonTest.dart';
import 'package:flutter_test1/SwitchTest.dart';
import 'package:flutter_test1/TextField.dart';
import 'package:flutter_test1/TextTest.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // const BasicTest(),
              // const ImagesTest(),
              // const ButtonTest(),
              // const Texttest(),
              // const Icontest(),
              // const Switchtest(),
              // const Checkboxtest(),
              const Textfield(),

              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
