import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatefulWidget {
  const ReorderableListViewPage({super.key, required this.title});

  final String title;

  @override
  State<ReorderableListViewPage> createState() =>
      _ReorderableListViewPageState();
}

class _ReorderableListViewPageState extends State<ReorderableListViewPage> {
  final _list = List.generate(50, (index) => 'Item ${index + 1}');

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
            var value = _list.removeAt(oldIndex);
            _list.insert(newIndex, value);
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              key: ValueKey(_list[index]),
              title: Text(_list[index]),
              leading: ReorderableDragStartListener(
                index: index,
                child: const Icon(Icons.drag_handle_rounded),
              ),
            );
          },
          itemCount: _list.length,
        ),
      ),
    );
  }
}
