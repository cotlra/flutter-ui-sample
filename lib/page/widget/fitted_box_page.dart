import 'package:flutter/material.dart';

class FittedBoxPage extends StatefulWidget {
  const FittedBoxPage({super.key, required this.title});

  final String title;

  @override
  State<FittedBoxPage> createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: FittedBox(
            child: Text(
              'Fitted Box',
              style: TextStyle(fontSize: 1000),
            ),
          ),
        ),
      ),
    );
  }
}
