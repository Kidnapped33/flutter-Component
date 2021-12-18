import 'package:flutter/material.dart';

class Texttest extends StatefulWidget {
  const Texttest({Key? key}) : super(key: key);

  @override
  _TexttestState createState() => _TexttestState();
}

class _TexttestState extends State<Texttest> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DefaultTextStyle(
          //1.设置文本默认样式
          style: const TextStyle(
            color: Colors.red,
            fontSize: 20.0,
          ),
          textAlign: TextAlign.start,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text("ASHINE"), //默认样式
              Text(
                "NAME",
                style: TextStyle(color: Colors.blue),
              ), //默认样式基础上改颜色
              Text(
                "color",
                style: TextStyle(inherit: false, color: Colors.grey),
              )
            ],
          ),
        ),
        Text(
          'Ashine',
          style: TextStyle(
            color: Colors.green,
            fontSize: 18,
            height: 2,
            fontFamily: "Courier",
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed,
            background: Paint()..color = Colors.yellow,
          ),
        ),
        const Text.rich(TextSpan(children: [
          TextSpan(text: 'NAME:  '),
          TextSpan(text: 'Ashine', style: TextStyle(color: Colors.pink))
        ])),

      ],
    );
  }
}
