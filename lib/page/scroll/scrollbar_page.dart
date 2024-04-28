import 'package:flutter/material.dart';

class ScrollbarPage extends StatefulWidget {
  const ScrollbarPage({super.key, required this.title});

  final String title;

  @override
  State<ScrollbarPage> createState() => _ScrollbarPageState();
}

class _ScrollbarPageState extends State<ScrollbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Scrollbar(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('アイテム $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
