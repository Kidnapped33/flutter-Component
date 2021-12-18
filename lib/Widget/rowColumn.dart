import 'package:flutter/material.dart';

class Rowcolumn extends StatefulWidget {
  const Rowcolumn({Key? key}) : super(key: key);

  @override
  _RowcolumnState createState() => _RowcolumnState();
}

//------------------------------------------------------------------------  示例1 --------------------------- /
// class _RowcolumnState extends State<Rowcolumn> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       //测试Row对齐方式，排除Column默认居中对齐的干扰
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //   children: const <Widget>[
//         //     Text(" hello world "),
//         //     Text(" I am Jack "),
//         //   ],
//         // ),
//         // Row(
//         //   mainAxisSize: MainAxisSize.max,
//         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //   children: const <Widget>[
//         //     Text(" hello world "),
//         //     Text(" I am Jack "),
//         //   ],
//         // ),
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.start,
//         //   textDirection: TextDirection.ltr,
//         //   children: const <Widget>[
//         //     Text(" hello world +++++ "),
//         //     Text(" I am Jack "),
//         //   ],
//         // ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           verticalDirection: VerticalDirection.up,
//           children: const <Widget>[
//             Text(
//               " hello world ",
//               style: TextStyle(fontSize: 30.0),
//             ),
//             Text(" I am Jack "),
//           ],
//         ),
//       ],
//     );
//   }
// }

//------------------------------------------------------------------------  示例2 --------------------------- /

// class _RowcolumnState extends State<Rowcolumn> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       //测试Row对齐方式，排除Column默认居中对齐的干扰
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: const <Widget>[
//         Text("hi"),
//         Text("world"),
//       ],
//     );
//   }
// }

//------------------------------------------------------------------------  示例3 --------------------------- /

// class _RowcolumnState extends State<Rowcolumn> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           // mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
//           children: <Widget>[
//             Container(
//               color: Colors.red,
//               child: Column(
//                 mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
//                 children: const <Widget>[
//                   Text("hello world "),
//                   Text("I am Jack "),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class _RowcolumnState extends State<Rowcolumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50.0, left: 120.0),
      constraints:
          const BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
      decoration: const BoxDecoration(
        //背景装饰
        gradient: RadialGradient(
          //背景径向渐变
          colors: [Colors.red, Colors.orange],
          center: Alignment.topLeft,
          radius: .98,
        ),
        boxShadow: [
          //卡片阴影
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2.0, 2.0),
            blurRadius: 4.0,
          )
        ],
      ),
      transform: Matrix4.rotationZ(.2), //卡片倾斜变换
      alignment: Alignment.center, //卡片内文字居中
      child: const Text(
        //卡片文字
        "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
      ),
    );
  }
}
