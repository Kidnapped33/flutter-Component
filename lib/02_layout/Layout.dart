import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('小行星撞地球小行星撞地球小行星撞地球小行星撞地球小行星撞地球小行星撞地球'),
      // width: 200,
      // height: 10,
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.fromLTRB(30, 20, 50, 100),
      alignment: Alignment.center,

      //平移
      // transform: Matrix4.translationValues(30, 0, 0),
      //旋转
      // transform: Matrix4.rotationZ(-0.1),
      //缩放
      //斜切
      //transform: Matrix4.skewX(-0.1),

      decoration: BoxDecoration(
        border: Border.all(
            width: 20.0, color: Colors.blue, style: BorderStyle.solid),

        // border: Border(
        //   top: BorderSide(width: 10.0, color: Colors.blue),
        //   left: BorderSide(width: 10.0, color: Colors.blue),
        //   right: BorderSide(width: 10.0, color: Colors.blue),
        //   bottom: BorderSide(width: 10.0, color: Colors.blue),
        // ),
        // borderRadius: BorderRadius.all(Radius.circular(30)),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
        //背景色
        // color: Colors.orange,
        //渐变色
        // gradient: const LinearGradient(
        //     begin: Alignment.centerLeft,
        //     end: Alignment.centerRight,
        //     colors: [Colors.orange, Colors.white24])
      ),
    );
  }
}






//  children: const <Widget>[
//         Text('小行星'),
//         Text('小行星22'),
//       ],