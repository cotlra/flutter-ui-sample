import 'package:flutter/material.dart';

class GridPaperPage extends StatefulWidget {
  const GridPaperPage({super.key, required this.title});

  final String title;

  @override
  State<GridPaperPage> createState() => _GridPaperPageState();
}

class _GridPaperPageState extends State<GridPaperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GridPaper(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
