import 'package:flutter/material.dart';
import '01_mainDemo/Study.dart';
import '01_mainDemo/NewRouter.dart';
import '01_mainDemo/ButtonThemeDemo.dart';
import '01_mainDemo/SingleChildScrollViewDemo.dart';
import '01_mainDemo/Listviewdemo.dart';
import '01_mainDemo/ButtonDemo.dart';
import '01_mainDemo/CardDemo.dart';
import '01_mainDemo/StackDemo.dart';
import '01_mainDemo/WrapDemo.dart';
import '01_mainDemo/flexDemo.dart';
import '02_layout/ColumnTest.dart';
import '02_layout/RowTest.dart';

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
      body: Demo(),
      // const Flexdemo()
      // Wrapdemo()
      // const Stackdemo()
      // const Carddemo()
      // const Buttondemo()
      // const Buttonthemedemo()
      // const SingleChildScrollViewDemo()
      // const Study(),
      // const NewRoute(),
      // const Listviewdemo()
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: const Text("跳转新路由"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NewRoute();
              }));
            },
          ),
          ElevatedButton(
            child: const Text("SingleChildScrollView 滚动"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SingleChildScrollViewDemo();
              }));
            },
          ),
          // ElevatedButton(
          //   child: const Text("Listview 列表"),
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) {
          //       return const Listviewdemo();
          //     }));
          //   },
          // ),
          ElevatedButton(
            child: const Text("按钮"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Buttondemo();
              }));
            },
          ),
          ElevatedButton(
            child: const Text("卡片"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Carddemo();
              }));
            },
          ),
          ElevatedButton(
            child: const Text("Stack 层叠布局"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Stackdemo();
              }));
            },
          ),
          ElevatedButton(
            child: const Text("Wrap 流式布局"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Wrapdemo();
              }));
            },
          ),
          ElevatedButton(
            child: const Text("flex 布局"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Flexdemo();
              }));
            },
          ),
          ElevatedButton(
            child: const Text("Column 布局"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Columntest();
              }));
            },
          ),
          ElevatedButton(
            child: const Text("Row 布局"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const RowTest();
              }));
            },
          ),
        ],
      ),
    );
  }
}
