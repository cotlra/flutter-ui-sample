import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({super.key, required this.title});

  final String title;

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        ListTile(
          title: Text('ListTile'),
          subtitle: Text('This is ListTile.'),
          leading: Icon(
            Icons.account_circle_outlined,
          ),
          trailing: Icon(Icons.favorite),
        ),
      ],
    );
  }
}
