import 'package:flutter/material.dart';

class CheckboxListTilePage extends StatefulWidget {
  const CheckboxListTilePage({super.key, required this.title});

  final String title;

  @override
  State<CheckboxListTilePage> createState() => _CheckboxListTilePageState();
}

class _CheckboxListTilePageState extends State<CheckboxListTilePage> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CheckboxListTile(
            title: const Text('CheckboxListTile'),
            value: _value,
            onChanged: (newValue) {
              setState(() {
                _value = newValue;
              });
            }),
      ),
    );
  }
}
