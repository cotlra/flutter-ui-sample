import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ExpansionTilePage extends StatefulWidget {
  const ExpansionTilePage({super.key, required this.title});

  final String title;

  @override
  State<ExpansionTilePage> createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        ExpansionTile(
          title: Text("ExpansionTile"),
          children: [
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
            ListTile(
              title: Text('Item 3'),
            ),
          ],
        ),
      ],
    );
  }
}
