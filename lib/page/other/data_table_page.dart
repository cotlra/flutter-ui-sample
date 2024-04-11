import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({super.key, required this.title});
  final String title;

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: const [
              DataColumn(label: Expanded(child:Center(child:Text('No.'))),numeric: true,),
              DataColumn(label: Expanded(child:Center(child:Text('商品名'))),),
              DataColumn(label: Expanded(child:Center(child:Text('個数'))), numeric: true,),
              DataColumn(label: Expanded(child:Center(child:Text('単価'))), numeric: true,),
            ],
            rows: const [
              DataRow(cells: [DataCell(Text('01')),DataCell(Text('ポテトチップス')),DataCell(Text('3個')),DataCell(Text('200円'))]),
              DataRow(cells: [DataCell(Text('02')),DataCell(Text('ラムネ')),DataCell(Text('10個')),DataCell(Text('200円'))]),
              DataRow(cells: [DataCell(Text('03')),DataCell(Text('あめ')),DataCell(Text('120個')),DataCell(Text('50円'))]),
              DataRow(cells: [DataCell(Text('04')),DataCell(Text('チョコ詰め合わせ')),DataCell(Text('5個')),DataCell(Text('1200円'))]),
            ],
          ),
        )
      )
    );
  }
}
