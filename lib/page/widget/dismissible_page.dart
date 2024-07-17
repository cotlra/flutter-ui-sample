import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({super.key, required this.title});

  final String title;

  @override
  State<DismissiblePage> createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  final _list = List.generate(50, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(index),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                // Archive
                _list.removeAt(index);
              } else {
                // Delete
                _list.removeAt(index);
              }
            },
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.startToEnd) {
                return showConfirmDialog(
                  action: 'Archive',
                  target: _list[index],
                  colorScheme: colorScheme,
                );
              } else {
                return showConfirmDialog(
                  action: 'Delete',
                  target: _list[index],
                  colorScheme: colorScheme,
                );
              }
            },
            background: Container(
              color: colorScheme.primary,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(16),
              child: Text(
                'Archive',
                style: TextStyle(color: colorScheme.onPrimary),
              ),
            ),
            secondaryBackground: Container(
              color: colorScheme.secondary,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.all(16),
              child: Text(
                'Delete',
                style: TextStyle(color: colorScheme.onSecondary),
              ),
            ),
            child: ListTile(
              title: Text(_list[index]),
            ),
          );
        },
      ),
    );
  }

  Future<bool?> showConfirmDialog(
      {required String action,
      required String target,
      required ColorScheme colorScheme}) async {
    return await showDialog<bool?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm'),
          content:
              Text('Are you sure you want to ${action.toLowerCase()} $target?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text(
                action,
                style: TextStyle(color: colorScheme.error),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
