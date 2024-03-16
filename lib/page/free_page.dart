import 'package:flutter/material.dart';

class FreePage extends StatefulWidget {
  const FreePage({super.key, required this.title});

  final String title;

  @override
  State<FreePage> createState() => _FreePageState();
}

class _FreePageState extends State<FreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Placeholder(),
    );
  }
}
