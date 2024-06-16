import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({super.key, required this.title});
  final String title;

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  TimeOfDay _time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Text(
          _time.format(context),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          child: const Text('Show TimePicker'),
          onPressed: () async {
            final time = await showTimePicker(
              context: context,
              initialTime: _time,
            );
            setState(
              () {
                _time = time ?? _time;
              },
            );
          },
        ),
      ],
    );
  }
}
