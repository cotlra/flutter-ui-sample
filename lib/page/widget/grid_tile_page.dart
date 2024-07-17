import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class GridTilePage extends StatefulWidget {
  const GridTilePage({super.key, required this.title});

  final String title;

  @override
  State<GridTilePage> createState() => _GridTilePageState();
}

class _GridTilePageState extends State<GridTilePage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BaseFrame(
      title: widget.title,
      children: [
        SizedBox(
          width: 240,
          height: 320,
          child: GridTile(
            header: Container(
              height: 32,
              color: colorScheme.primary,
              alignment: Alignment.center,
              child: Text(
                'Header',
                style: TextStyle(color: colorScheme.onPrimary),
              ),
            ),
            footer: Container(
              height: 32,
              color: colorScheme.primary,
              alignment: Alignment.center,
              child: Text(
                'Footer',
                style: TextStyle(color: colorScheme.onPrimary),
              ),
            ),
            child: Container(
              color: colorScheme.primaryContainer,
              alignment: Alignment.center,
              child: Text(
                'GridTile',
                style: TextStyle(color: colorScheme.onPrimaryContainer),
              ),
            ),
          ),
        )
      ],
    );
  }
}
