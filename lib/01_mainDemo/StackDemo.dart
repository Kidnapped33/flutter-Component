import 'package:flutter/material.dart';

class Stackdemo extends StatelessWidget {
  const Stackdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand, //未定位widget占满Stack整个空间
        children: <Widget>[
          // const Positioned(
          //   left: 18.0,
          //   child: Text("I am Jack"),
          // ),
          Container(
            child: const Text("Hello world",
                style: TextStyle(color: Colors.white)),
            color: Colors.red,
          ),
          const Positioned(
            top: 18.0,
            child: Text("Your friend"),
          )
        ],
      ),
    );
  }
}


// Stack(
//         alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(10),
//             child: const Text("Hello world",
//                 style: TextStyle(color: Colors.white)),
//             color: Colors.red,
//           ),
//           const Positioned(
//             left: 18.0,
//             child: Text("I am Jack"),
//           ),
//           const Positioned(
//             bottom: 18.0,
//             child: Text("Your friend"),
//           )
//         ],
//       ),