import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TableSample(),
    );
  }
}

class TableSample extends StatelessWidget {
  const TableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table Sample'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Table(
          border: TableBorder.all(
              color: Colors.black26, borderRadius: BorderRadius.circular(7)),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(60),
            2: FixedColumnWidth(60),
          },
          children: [
            MyTableRow('cell', 'cell', 'cell', 'cell', 40,
                const BorderRadius.only(topLeft: Radius.circular(7)), 12),
            MyTableRow('cell', 'cell', 'cell', 'cell', 40,
                const BorderRadius.only(topLeft: Radius.circular(0)), 12),
            MyTableRow('cell', 'cell', 'cell', 'cell', 40,
                const BorderRadius.only(topLeft: Radius.circular(0)), 12),
            MyTableRow('cell', 'cell', 'cell', 'cell', 40,
                const BorderRadius.only(bottomLeft: Radius.circular(7)), 12),
          ],
        ),
      ),
    );
  }

  TableRow MyTableRow(String title1, String t1, String title2, String t2,
      double height, borderRadius, double fontsize) {
    return TableRow(children: <Widget>[
      TableCell(
        child: Container(
            decoration: BoxDecoration( color: Colors.black12, borderRadius: borderRadius,
            ),
            height: height,
            child: Center(
                child: Text(
              title1,
              style: TextStyle(fontSize: fontsize),
            ))),
      ),
      TableCell(
          child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                t1,
                style: TextStyle(fontSize: fontsize),
              ))),
      TableCell(
        child: Container(
            color: Colors.black12,
            height: height,
            child: Center(
                child: Text(
              title2,
              style: TextStyle(fontSize: fontsize),
            ))),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            t2,
            style: TextStyle(fontSize: fontsize),
          ),
        ),
      ),
    ]);
  }
}
