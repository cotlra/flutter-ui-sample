import 'package:flutter/material.dart';

class FlutterLogoPage extends StatefulWidget {
  const FlutterLogoPage({super.key, required this.title});

  final String title;

  @override
  State<FlutterLogoPage> createState() => _FlutterLogoPageState();
}

class _FlutterLogoPageState extends State<FlutterLogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SafeArea(
        child: Center(
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
