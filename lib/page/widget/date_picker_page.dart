import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key, required this.title});
  final String title;

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime _date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Text(
          _date.toString(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          child: const Text('Show DatePicker'),
          onPressed: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1980),
              lastDate: DateTime(2050, 12, 31),
            );
            setState(() {
              _date = date ?? _date;
            });
          },
        ),
      ],
    );
  }
}
