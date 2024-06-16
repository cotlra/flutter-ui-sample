import 'package:flutter/material.dart';

class SafeAreaPage extends StatefulWidget {
  const SafeAreaPage({super.key, required this.title});

  final String title;

  @override
  State<SafeAreaPage> createState() => _SafeAreaState();
}

class _SafeAreaState extends State<SafeAreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: const Center(
            child: Text('SafeArea'),
          ),
        ),
      ),
    );
  }
}
