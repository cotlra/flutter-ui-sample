import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key, required this.title});

  final String title;

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: ListTile(
          title: Text('ListTile'),
          subtitle: Text('This is ListTile.'),
          leading: Icon(
            Icons.account_circle_outlined,
          ),
          trailing: Icon(Icons.favorite),
        ),
      ),
    );
  }
}
