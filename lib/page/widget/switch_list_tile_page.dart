import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

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
    return BaseFrame(
      title: widget.title,
      children: [
        SwitchListTile(
          title: const Text('SwitchListTile'),
          value: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
        ),
      ],
    );
  }
}
