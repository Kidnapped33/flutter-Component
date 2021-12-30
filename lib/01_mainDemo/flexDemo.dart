import 'package:flutter/material.dart';

class Flexdemo extends StatefulWidget {
  const Flexdemo({Key? key}) : super(key: key);

  @override
  _FlexdemoState createState() => _FlexdemoState();
}

class _FlexdemoState extends State<Flexdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flex 布局页")),
        body: Column(children: [
          Row(
            children: [
              //想要 2 个盒子 并排，可以在Row里放两个Expanded（里面有Container ） ,会自动分配width
              //想要自定义宽度，就放 Container 就好了，不用 Expanded 包在外面
              Container(
                color: Colors.red,
                width: 30,
                height: 50,
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 20,
                ),
              )
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: const [
              Icon(Icons.shuffle_outlined),
              Icon(Icons.share),
              Icon(Icons.share)
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 50,
                  ),
                  flex: 5),
              const Spacer(flex: 1),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 50,
                ),
              )
            ],
          ),
          Container(
            child: const Text('center',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18.0,
                  backgroundColor: Colors.yellow,
                )),
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(30),
            decoration:
                BoxDecoration(border: Border.all(width: 1), color: Colors.blue),
            alignment: Alignment.center,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.blue,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
              )),
              Expanded(
                  child: Container(
                color: Colors.red[100],
                height: 100,
              )),
            ],
          ),
          Column(
            children: [
              Container(
                color: Colors.cyan,
              )
            ],
          )
        ]));
  }
}
