import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key, required this.title});

  final String title;

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Switch(
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
