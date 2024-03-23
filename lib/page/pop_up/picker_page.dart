import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key, required this.title});
  final String title;

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('Date Picker'),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1980, 12, 31),
                    lastDate: DateTime(2050, 12, 31));
              },
            ),
            ElevatedButton(
              child: const Text('Date Range Picker'),
              onPressed: () {
                showDateRangePicker(
                    context: context,
                    firstDate: DateTime(1980, 12, 31),
                    lastDate: DateTime(2050, 12, 31));
              },
            ),
            ElevatedButton(
              child: const Text('Time Picker'),
              onPressed: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now());
              },
            ),
          ],
        ),
      ),
    );
  }
}
