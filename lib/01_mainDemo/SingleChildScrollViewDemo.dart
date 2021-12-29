import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("滚动页")),
        body: Stack(children: [
          SingleChildScrollView(
              //本来是溢出，加个滚动即可水平滚动
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(50),
              //初始滚动位置
              reverse: false,
              child: Column(
                children: List.generate(
                  20,
                  (index) => OutlinedButton(
                    child: Text("Text$index"),
                    onPressed: () {},
                  ),
                ),
              )),
          SingleChildScrollView(
              //本来是溢出，加个滚动即可水平滚动
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              //初始滚动位置
              reverse: false,
              child: Row(
                children: List.generate(
                  33,
                  (index) => OutlinedButton(
                    child: Text("Text$index"),
                    onPressed: () {},
                  ),
                ),
              ))
        ]));
  }
}
