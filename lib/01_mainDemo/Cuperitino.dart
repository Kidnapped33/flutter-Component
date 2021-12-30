import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Cuperitino extends StatefulWidget {
//   const Cuperitino({Key? key}) : super(key: key);

//   @override
//   _CuperitinoState createState() => _CuperitinoState();
// }

// class _CuperitinoState extends State<Cuperitino> {
//   late final Widget _dialogBox;

//   @override
//   void initState() {
//     super.initState();
//     //判断当前平台信息
//     if (Platform.isIOS) {
//       _dialogBox = const CuperitinoDemo();
//     } else if (Platform.isAndroid) {
//       _dialogBox = const MaterialDemo();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Cuperitino 对比$_dialogBox")),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[_dialogBox],
//         ));
//   }
// }

class Cuperitino extends StatelessWidget {
  const Cuperitino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final Widget _dialogBox;
    if (Platform.isIOS) {
      _dialogBox = const CuperitinoDemo();
    } else if (Platform.isAndroid) {
      _dialogBox = const MaterialDemo();
    }
    return Scaffold(
        appBar: AppBar(title: const Text("Cuperitino 对比")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[_dialogBox],
        ));
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text("Material - 安卓风格"),
        AlertDialog(
          title: Text("提示"),
          content: Text("确认删除吗？"),
          actions: [
            TextButton(onPressed: null, child: Text("取消")),
            TextButton(onPressed: null, child: Text("确认")),
          ],
        ),
      ],
    );
  }
}

class CuperitinoDemo extends StatelessWidget {
  const CuperitinoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text("Cuperitino - IOS风格"),
        CupertinoAlertDialog(
          title: Text("提示"),
          content: Text("确认删除吗？"),
          actions: [
            CupertinoDialogAction(onPressed: null, child: Text("取消")),
            CupertinoDialogAction(onPressed: null, child: Text("确认")),
          ],
        )
      ],
    );
  }
}
