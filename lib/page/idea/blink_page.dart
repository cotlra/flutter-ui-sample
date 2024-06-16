import 'package:flutter/material.dart';

import '../../components/blink.dart';

class BlinkPage extends StatefulWidget {
  const BlinkPage({super.key, required this.title});
  final String title;

  @override
  State<BlinkPage> createState() => _BlinkPageState();
}

class _BlinkPageState extends State<BlinkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SafeArea(
        child: Center(
          child: Blink(
            duration: Duration(seconds: 1),
            child: Text('Blink'),
          ),
        ),
      ),
    );
  }
}
