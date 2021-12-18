import 'package:flutter/material.dart';

class ImagesTest extends StatelessWidget {
  const ImagesTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         const Image(image: AssetImage("images/A1.png")),
        Image.asset(
          "images/A1.png",
          width: 100.0,
        ),
        Image.network(
          "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
          width: 100.0,
          height: 200.0,
          color: Colors.blue,
          colorBlendMode: BlendMode.difference,
          repeat: ImageRepeat.repeatY,
        ),
      ],
    );
  }
}
