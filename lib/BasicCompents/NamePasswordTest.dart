import 'package:flutter/material.dart';

class namePasswordTest extends StatefulWidget {
  const namePasswordTest({Key? key}) : super(key: key);

  @override
  _namePasswordTestState createState() => _namePasswordTestState();
}

// ignore: camel_case_types
class _namePasswordTestState extends State<namePasswordTest> {
//使用控制器存 用户名的值
  final TextEditingController _unameController = TextEditingController();
//使用控制器存 密码的值
  final TextEditingController _upasswordController = TextEditingController();

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //打印用户名的值
    print('用户名：${_unameController.text}');
    //打印密码
    print('密码：${_upasswordController.text}');
    return Form(
      key: _formKey, //设置globalKey，用于后面获取FormState
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            //绑定用户名的值
            controller: _unameController,
            decoration: const InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            //绑定密码的值
            controller: _upasswordController,
            decoration: const InputDecoration(
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
