import 'package:flutter/material.dart';

class Transformtest extends StatefulWidget {
  const Transformtest({Key? key}) : super(key: key);

  @override
  _TransformtestState createState() => _TransformtestState();
}

class _TransformtestState extends State<Transformtest> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.red),
      //默认原点为左上角，左移20像素，向上平移5像素
      child: Transform.translate(
        offset: const Offset(-20.0, -5.0),
        child: const Text("Hello world"),
      ),
    );
  }
}

// ------------------------------------------ 5-20 -------

// class _TransformtestState extends State<Transformtest> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 50.0, left: 120.0),
//       constraints:
//           const BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
//       decoration: const BoxDecoration(
//         //背景装饰
//         gradient: RadialGradient(
//           //背景径向渐变
//           colors: [Colors.red, Colors.orange],
//           center: Alignment.topLeft,
//           radius: .98,
//         ),
//         boxShadow: [
//           //卡片阴影
//           BoxShadow(
//             color: Colors.black54,
//             offset: Offset(2.0, 2.0),
//             blurRadius: 4.0,
//           )
//         ],
//       ),
//       transform: Matrix4.rotationZ(.2), //卡片倾斜变换
//       alignment: Alignment.center, //卡片内文字居中
//       child: const Text(
//         //卡片文字
//         "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
//       ),
//     );
//   }
// }

//---------------------------- margin -----

// class _TransformtestState extends State<Transformtest> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(20.0), //容器外补白
//       color: Colors.orange,
//       child: const Text("Hello world!"),
//     );
//   }
// }

// ------------------------------ padding ----

// class _TransformtestState extends State<Transformtest> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(20.0), //容器内补白
//       color: Colors.orange,
//       child: const Text("Hello world!"),
//     );
//   }
// }
