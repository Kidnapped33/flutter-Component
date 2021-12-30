import 'package:flutter/material.dart';

class Listviewdemo extends StatefulWidget {
  const Listviewdemo({Key? key, this.outUsers}) : super(key: key);
  final List<Widget>? outUsers;

  @override
  _ListviewdemoState createState() => _ListviewdemoState();
}

class _ListviewdemoState extends State<Listviewdemo> {
  // ------------------------------------------------------------------ 内部定义的数据 _myUsers

  final List<Widget> _myUsers = List<Widget>.generate(
      20,
      (index) => const ListTile(
            leading: Icon(Icons.access_alarm_outlined, size: 50),
            title: Text("alarm_outlined"),
            subtitle: Text("_myUsers_myUsers_myUsers"),
            trailing: Icon(Icons.arrow_right),
          ));

  //-------------------------------------------------------------------- 外部定义的数据 outUsers

  get outUsers =>
      widget.outUsers ??
      List<Widget>.generate(
          30,
          (index) => const ListTile(
                leading: Icon(Icons.access_alarm_outlined, size: 50),
                title: Text("alarm_outlined"),
                subtitle: Text("outUsers/outUsers/outUsers/outUsers"),
                trailing: Icon(Icons.arrow_right),
              ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listview 页")),
      body: ListView.separated(
        itemCount: _myUsers.length, // outUsers.length
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          return _myUsers[index]; // outUsers[index]
        },
      ),
    );
  }
}

// ListTile(
//   leading: Icon( Icons.access_alarm_outlined,size: 50),
//   title: Text("alarm_outlined"),
//   subtitle: Text("子标题"),
//   trailing: Icon(Icons.arrow_right),
//   selected: true, //被选中
//   selectedTileColor: Colors.orange,
//   selectedColor: Colors.white,
// ),

// // --------------------------- ListView -----------

//  ListView(
//         children: List.generate(
//             10,
//             (index) => const ListTile(
//                   leading: Icon(Icons.access_alarm_outlined, size: 50),
//                   title: Text("alarm_outlined"),
//                   subtitle: Text("子标题"),
//                   trailing: Icon(Icons.arrow_right),
//                 )),
//       ),

// // ------------------------ ListView.build -----------

// ListView.builder(
//         itemCount: _myUsers.length,
//         itemExtent: 30,
//         itemBuilder: (context, index) {
//           return _myUsers[index];
//         },
//       ),


// // ------------------------ ListView.separated -----------

//  ListView.separated(
//         itemCount: _myUsers.length, // outUsers.length
//         separatorBuilder: (BuildContext context, int index) {
//           return const Divider();
//         },
//         itemBuilder: (context, index) {
//           return _myUsers[index]; // outUsers[index]
//         },
//       ),