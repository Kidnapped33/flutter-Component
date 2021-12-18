import 'package:flutter/material.dart';

class Focustestroute extends StatefulWidget {
  const Focustestroute({Key? key}) : super(key: key);

  @override
  _FocustestrouteState createState() => _FocustestrouteState();
}

class _FocustestrouteState extends State<Focustestroute> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            focusNode: focusNode1,
            decoration: const InputDecoration(labelText: "input1"),
          ),
          TextField(
            autofocus: true,
            focusNode: focusNode2,
            decoration: const InputDecoration(labelText: "input2"),
          ),
          Builder(builder: (ctx) {
            return Column(
              children: <Widget>[
                ElevatedButton(
                  child: Text('移动焦点'),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(focusNode2);
                  },
                ),
                ElevatedButton(
                  child: Text("隐藏键盘"),
                  onPressed: () {
                    // 当所有编辑框都失去焦点时键盘就会收起
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
