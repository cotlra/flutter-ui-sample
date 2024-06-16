import 'package:flutter/material.dart';

class LinearProgressIndicatorPage extends StatefulWidget {
  const LinearProgressIndicatorPage({super.key, required this.title});

  final String title;

  @override
  State<LinearProgressIndicatorPage> createState() =>
      _LinearProgressIndicatorPageState();
}

class _LinearProgressIndicatorPageState
    extends State<LinearProgressIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SafeArea(
        child: LinearProgressIndicator(),
      ),
    );
  }
}
