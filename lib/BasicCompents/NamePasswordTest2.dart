import 'package:flutter/material.dart';

class namePasswordTest2 extends StatefulWidget {
  const namePasswordTest2({Key? key}) : super(key: key);

  @override
  _namePasswordTest2State createState() => _namePasswordTest2State();
}

class _namePasswordTest2State extends State<namePasswordTest2> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, //设置globalKey，用于后面获取FormState
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            //监听:每次输入都触发
            onChanged: (v) {
              print('change:$v');
            },
            decoration: const InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入您的登录密码",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
