import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key, required this.title});

  final String title;

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? _value = 'sunny';

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        RadioGroup<String>(
          groupValue: _value,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio<String>(
                value: 'sunny',
              ),
              Text('Sunny'),
              SizedBox(width: 32),
              Radio<String>(
                value: 'cloudy',
              ),
              Text('Cloudy'),
              SizedBox(width: 32),
              Radio<String>(
                value: 'rainy',
              ),
              Text('Rainy'),
            ],
          ),
        ),
      ],
    );
  }
}
