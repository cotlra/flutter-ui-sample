import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class GridTileBarPage extends StatefulWidget {
  const GridTileBarPage({super.key, required this.title});

  final String title;

  @override
  State<GridTileBarPage> createState() => _GridTileBarPageState();
}

class _GridTileBarPageState extends State<GridTileBarPage> {
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
            header: GridTileBar(
              leading: const Icon(Icons.account_circle),
              title: const Text('GridTileBar'),
              subtitle: const Text('Subtitle'),
              trailing: const Icon(Icons.favorite),
              backgroundColor: colorScheme.primary,
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
        ),
      ],
    );
  }
}
