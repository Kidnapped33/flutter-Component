import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("GridView 页")),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: GridView.extent(
            maxCrossAxisExtent: 200, //交叉轴方向上尽量大
            mainAxisSpacing: 10.0, // 间距
            crossAxisSpacing: 20.0, // 间距
            childAspectRatio: 2, // 宽高比例
            children: [
              Container(color: Colors.blue),
              Container(color: Colors.brown),
              Container(color: Colors.green),
              Container(color: Colors.yellow),
              Container(color: Colors.red),
              Container(color: Colors.purple[200]),
              Container(color: Colors.teal),
              Container(color: Colors.tealAccent),
            ],
          ),
        ));
  }
}

// -------------------------------------------------------  3 列 -------------- GridView / SliverGridDelegateWithFixedCrossAxisCount

//  GridView(
//             //想要给这个加padding，需要外面包一个container

//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3, // 列数（交叉轴方向上固定数量）
//               mainAxisSpacing: 10.0, // 间距
//               crossAxisSpacing: 20.0, // 间距
//               childAspectRatio: 1.0, // 宽高比例
//             ),
//             children: [
//               Container(color: Colors.blue),
//               Container(color: Colors.brown),
//               Container(color: Colors.green),
//               Container(color: Colors.yellow),
//               Container(color: Colors.red),
//               Container(color: Colors.purple[200]),
//               Container(color: Colors.teal),
//               Container(color: Colors.tealAccent),
//             ],
//           ),

// -------------------------------------------------------  2 列 -------------- GridView.count /

// GridView.count(
//             crossAxisCount: 2, // 列数（交叉轴方向上固定数量）
//             mainAxisSpacing: 10.0, // 间距
//             crossAxisSpacing: 20.0, // 间距
//             childAspectRatio: 2, // 宽高比例
//             children: [
//               Container(color: Colors.blue),
//               Container(color: Colors.brown),
//               Container(color: Colors.green),
//               Container(color: Colors.yellow),
//               Container(color: Colors.red),
//               Container(color: Colors.purple[200]),
//               Container(color: Colors.teal),
//               Container(color: Colors.tealAccent),
//             ],
//           ),

// -------------------------------------------------------  按宽度 自适应 --------- GridView / SliverGridDelegateWithMaxCrossAxisExtent

// GridView(
//             //想要给这个加padding，需要外面包一个container

//             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: 200, // 交叉轴方向上尽量大
//               mainAxisSpacing: 10.0, // 间距
//               crossAxisSpacing: 20.0, // 间距
//               childAspectRatio: 2.0, // 宽高比例
//             ),
//             children: [
//               Container(color: Colors.blue),
//               Container(color: Colors.brown),
//               Container(color: Colors.green),
//               Container(color: Colors.yellow),
//               Container(color: Colors.red),
//               Container(color: Colors.purple[200]),
//               Container(color: Colors.teal),
//               Container(color: Colors.tealAccent),
//             ],
//           ),

// -------------------------------------------------------  按宽度 自适应 --------- GridView.extent /

// GridView.extent(
//             maxCrossAxisExtent: 200, //交叉轴方向上尽量大
//             mainAxisSpacing: 10.0, // 间距
//             crossAxisSpacing: 20.0, // 间距
//             childAspectRatio: 2, // 宽高比例
//             children: [
//               Container(color: Colors.blue),
//               Container(color: Colors.brown),
//               Container(color: Colors.green),
//               Container(color: Colors.yellow),
//               Container(color: Colors.red),
//               Container(color: Colors.purple[200]),
//               Container(color: Colors.teal),
//               Container(color: Colors.tealAccent),
//             ],
//           ),