import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({super.key, required this.title});
  final String title;

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: const [
              DataColumn(
                label: Expanded(child: Center(child: Text('No.'))),
                numeric: true,
              ),
              DataColumn(
                label: Expanded(child: Center(child: Text('Name'))),
              ),
              DataColumn(
                label: Expanded(child: Center(child: Text('Quantity'))),
                numeric: true,
              ),
              DataColumn(
                label: Expanded(child: Center(child: Text('Price'))),
                numeric: true,
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text('01')),
                  DataCell(Text('Crisps')),
                  DataCell(Text('3')),
                  DataCell(Text('200')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('02')),
                  DataCell(Text('Cookies')),
                  DataCell(Text('10')),
                  DataCell(Text('200')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('03')),
                  DataCell(Text('Candy')),
                  DataCell(Text('120')),
                  DataCell(Text('50')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('04')),
                  DataCell(Text('Chocolate')),
                  DataCell(Text('5')),
                  DataCell(Text('500')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
