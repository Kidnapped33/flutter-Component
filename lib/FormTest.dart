import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  const FormTestRoute({Key? key}) : super(key: key);

  @override
  _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, //设置globalKey，用于后面获取FormState
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: const <Widget>[
          TextField(
            autofocus: true,
            //绑定用户名的值
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            //绑定密码的值
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
