import 'package:flutter/material.dart';

class Carddemo extends StatelessWidget {
  const Carddemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // ----------------------------------------------------------- Card 1

      Card(
        child: Column(children: const [
          ListTile(
            leading: Icon(Icons.six_k_rounded, size: 50),
            title: Text("Ashine"),
            subtitle: Text("13056987955"),
          ),
        ]),
      ),

      // ----------------------------------------------------------- Card 2

      Card(
        color: Colors.amber,
        shadowColor: Colors.brown,
        elevation: 20,
        margin: const EdgeInsets.all(20),
        shape: BeveledRectangleBorder(
            side: const BorderSide(width: 8, color: Colors.white38),
            borderRadius: BorderRadius.circular(5)),
        child: Column(children: const [
          ListTile(
            leading: Icon(Icons.six_k_rounded, size: 50),
            title: Text("Ashine"),
            subtitle: Text("13056987955"),
          ),
        ]),
      ),

      // ----------------------------------------------------------- Card 3

      Card(
        margin: const EdgeInsets.all(20),
        child: Column(children: const [
          ListTile(
            leading: Icon(Icons.six_k_rounded, size: 50),
            title: Text("Ashine"),
            subtitle: Text("13056987955"),
          ),
          Divider(),
          ListTile(
            title: Text("住址：嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻"),
          ),
          ListTile(
            title: Text("邮箱：655987562@qq.com"),
          ),
        ]),
      ),
    ]);
  }
}
