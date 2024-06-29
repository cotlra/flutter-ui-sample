import 'package:flutter/material.dart';

class ScrollbarPage extends StatefulWidget {
  const ScrollbarPage({super.key, required this.title});

  final String title;

  @override
  State<ScrollbarPage> createState() => _ScrollbarPageState();
}

class _ScrollbarPageState extends State<ScrollbarPage> {
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Scrollbar(
          thumbVisibility: true,
          controller: _controller,
          child: ListView.builder(
            controller: _controller,
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
