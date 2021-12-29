import 'package:flutter/material.dart';
import 'package:flutter_test1/main.dart';

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("newRouter"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return Demo();
              }));
            },
            child: Text('返回')),
      ),
    );
  }
}
