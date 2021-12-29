import 'package:flutter/material.dart';

class Wrapdemo extends StatelessWidget {
  Wrapdemo({Key? key}) : super(key: key);
  final List<String> _list = [
    '昨天',
    '今天',
    '明天',
    '昨天',
    '明天',
    '昨天',
    '明天',
    '昨天',
    '明天',
    '昨天',
    '明天',
    '昨天',
    '昨天',
  ];

// //_开头命名为私有的
  List<Widget> _getList() {
    return _list
        .map((item) => Chip(
            avatar: const CircleAvatar(
                backgroundColor: Colors.blue, child: Text('M')),
            label: Text(item)))
        .toList();
  }

  @override

  // ------------------------------------------ 使用 Row 会溢出 -----------------------
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(" Wrap 流式布局")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              //主轴方向子widget的间距
              spacing: 10,
              //纵轴方向的间距
              runSpacing: 20,
              //纵轴方向的对齐方式
              alignment: WrapAlignment.center,
              //获取数据
              children: _getList(),
            ),
            Wrap(
              children: const <Widget>[
                Chip(
                    avatar: CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('M')),
                    label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
                Chip(label: Text("data")),
              ],
            )
          ],
        ));
  }
}
