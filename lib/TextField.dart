import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  //定义一个controller
  final TextEditingController _unameController = TextEditingController();
  @override
  void initState() {
    super.initState();
       print('init------------------------------- ' );
  }

  @override
  Widget build(BuildContext context) {
      print('+++++++++++++++++$_unameController.text' );
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          controller: _unameController, //设置controller
          onChanged: (v) {
            // ignore: avoid_print
            print("onChange: $v");
          },
          decoration: const InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)),
        ),
        const TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        ),
      ],
    );
  }
}
