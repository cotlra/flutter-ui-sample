import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatefulWidget {
  const ReorderableListViewPage({super.key, required this.title});

  final String title;

  @override
  State<ReorderableListViewPage> createState() =>
      _ReorderableListViewPageState();
}

class _ReorderableListViewPageState extends State<ReorderableListViewPage> {
  late List<int> _values;

  @override
  void initState() {
    _values = List.generate(50, (index) => index * 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: ReorderableListView.builder(
            onReorder: (int oldIndex, int newIndex) {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              var value = _values.removeAt(oldIndex);
              _values.insert(newIndex, value);
            },
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                key: ValueKey(_values[index]),
                title: Text(_values[index].toString()),
                leading: ReorderableDragStartListener(
                  index: index,
                  child: const Icon(Icons.drag_handle_rounded),
                ),
              );
            },
            itemCount: _values.length,
          ),
        ));
  }
}
