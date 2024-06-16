import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

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
    return BaseFrame(
      title: widget.title,
      children: [
        CheckboxListTile(
          title: const Text('CheckboxListTile'),
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
