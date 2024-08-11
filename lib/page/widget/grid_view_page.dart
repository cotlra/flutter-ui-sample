import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key, required this.title});

  final String title;

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        children: List.generate(
          53,
          (index) {
            final colorScheme = Theme.of(context).colorScheme;
            final color = index.isEven
                ? colorScheme.primary
                : colorScheme.primaryContainer;
            return Container(
              width: 80,
              height: 80,
              color: color,
            );
          },
        ),
      ),
    );
  }
}
