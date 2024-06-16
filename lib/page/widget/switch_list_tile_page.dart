import 'package:flutter/material.dart';

class SwitchListTilePage extends StatefulWidget {
  const SwitchListTilePage({super.key, required this.title});

  final String title;

  @override
  State<SwitchListTilePage> createState() => _SwitchListTilePageState();
}

class _SwitchListTilePageState extends State<SwitchListTilePage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SwitchListTile(
            title: const Text('SwitchListTile'),
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
