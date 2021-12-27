import 'package:flutter/material.dart';

import '01_mainDemo/CardDemo.dart';
import '01_mainDemo/StackDemo.dart';
import '01_mainDemo/WrapDemo.dart';
import '01_mainDemo/flexDemo.dart';

void main() => runApp(const MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(title: '招聘端'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: const [Icon(Icons.share)],
        ),
        body:
            // const Flexdemo()
            //Wrapdemo()
            // const Stackdemo()
            const Carddemo());
  }
}

// class Demo extends StatelessWidget {
//   const Demo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const <Widget>[
//         Icon(Icons.share_arrival_time),
//         Icon(Icons.shopping_cart),
//         Icon(Icons.short_text),
//       ],
//     );
//   }
// }
