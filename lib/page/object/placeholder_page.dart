import 'package:flutter/material.dart';

class PlaceholderPage extends StatefulWidget {
  const PlaceholderPage({super.key, required this.title});

  final String title;

  @override
  State<PlaceholderPage> createState() => _PlaceholderPageState();
}

class _PlaceholderPageState extends State<PlaceholderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
