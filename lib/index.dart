
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  //此小部件是应用程序的入口
  @override // 覆盖
  Widget build(BuildContext context) { //构建上下文
    return MaterialApp( //重要APP
      title: 'Flutter Demo',
      theme: ThemeData( //主题
        primarySwatch: Colors.green, //基本的色盘
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
  // 这个对 setState 的调用告诉 Flutter 框架某些东西已经
       // 在此状态下发生更改，导致它重新运行下面的构建方法
       // 以便显示可以反映更新的值。 如果我们改变
       // _counter 不调用setState()，那么build方法就不会
       // 再次调用，所以似乎什么都没有发生
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 每次调用 setState 时都会重新运行此方法，例如 done
     // 通过上面的 _incrementCounter 方法。
     //
     // Flutter 框架已经过优化，可以重新运行构建方法
     // 快速，这样你就可以重建任何需要更新的东西
     // 而不是必须单独更改小部件的实例。
    return Scaffold(
      appBar: AppBar(
        // 这里我们从创建的 MyHomePage 对象中获取值
         // App.build 方法，并使用它来设置我们的应用栏标题 
        title: Text(widget.title),
      ),
      body: Center(
        // 中心是一个布局小部件。 它需要一个孩子并将其定位
         // 在父级的中间。
        child: Column(
          // Column 也是一个布局小部件。 它需要一个孩子的名单和
           // 垂直排列它们。 默认情况下，它会调整自己的大小以适合其
           // 水平的孩子，并试图和它的父母一样高。
           //
           // 调用“调试绘画”（在控制台中按“p”，选择
           // 来自 Android 中 Flutter Inspector 的“Toggle Debug Paint”操作
           // Studio，或 Visual Studio Code 中的“Toggle Debug Paint”命令）
           // 查看每个小部件的线框。
           //
           // Column 有各种属性来控制它自身的大小和
           // 它如何定位它的孩子。 这里我们使用 mainAxisAlignment 来
           // 垂直居中孩子； 这里的主轴是垂直的
           // 轴，因为列是垂直的（横轴是
           // 水平的）。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
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
