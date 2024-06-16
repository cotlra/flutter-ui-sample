import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
          ),
        ),
      ),
    );
  }
}
