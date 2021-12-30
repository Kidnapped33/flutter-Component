import 'package:flutter/material.dart';

class TableDemo extends StatelessWidget {
  const TableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Table 页")),
      body: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(),
          2: FixedColumnWidth(90),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(children: <Widget>[
            Container(
              height: 30,
              color: Colors.green,
              child: const Text("row - 1"),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 10,
                width: 32,
                color: Colors.red,
                child: const Text("row - 2"),
              ),
            ),
            Container(
              height: 80,
              color: Colors.blue,
              child: const Text("row - 3"),
            ),
          ]),
          TableRow(
            decoration: const BoxDecoration(color: Colors.grey),
            children: <Widget>[
              Container(
                height: 64,
                width: 128,
                color: Colors.purple,
                child: const Text("row - 4"),
              ),
              Container(
                height: 32,
                color: Colors.yellow,
                child: const Text("row - 5"),
              ),
              Center(
                child: Container(
                  height: 32,
                  width: 32,
                  color: Colors.orange,
                  child: const Text("row - 66677777777777"),
                ),
              ),
            ],
          ),
          const TableRow(
            decoration: BoxDecoration(color: Colors.white),
            children: <Widget>[
              Text("row - 45555"),
              Text("row - 5666666666"),
              Center(child: Text("row - 6677")),
            ],
          ),
        ],
      ),
    );
  }
}


          // const Padding(padding: EdgeInsets.all(10), child: Text("padding")),
          // const Center(child: Text("center")),
          // const Align(alignment: Alignment.bottomCenter, child: Text("Align")),
          //const FittedBox( alignment: Alignment.center, child: Text("FittedBox")), 没效果
          // const SizedBox(width: 100, height: 10, child: Text("SizedBox")),