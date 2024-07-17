import 'package:flutter/material.dart';

class ListWheelScrollViewPage extends StatefulWidget {
  const ListWheelScrollViewPage({super.key, required this.title});

  final String title;

  @override
  State<ListWheelScrollViewPage> createState() =>
      _ListWheelScrollViewPageState();
}

class _ListWheelScrollViewPageState extends State<ListWheelScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListWheelScrollView(
        itemExtent: 64,
        children: List.generate(50, (index) {
          return Card(
            child: ListTile(
              title: Text('Item ${index + 1}'),
            ),
          );
        }),
      ),
    );
  }
}
