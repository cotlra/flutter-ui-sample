import 'package:flutter/material.dart';

class DateRangePickerPage extends StatefulWidget {
  const DateRangePickerPage({super.key, required this.title});
  final String title;

  @override
  State<DateRangePickerPage> createState() => _DateRangePickerPageState();
}

class _DateRangePickerPageState extends State<DateRangePickerPage> {
  DateTimeRange _dateTimeRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
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
                'Start:${_dateTimeRange.start}\nEnd: ${_dateTimeRange.end}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                child: const Text('Show DateRangePicker'),
                onPressed: () async {
                  final dateTimeRange = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(1950, 1, 1),
                    lastDate: DateTime(2050, 12, 31),
                    initialDateRange: _dateTimeRange,
                  );
                  setState(() {
                    _dateTimeRange = dateTimeRange ?? _dateTimeRange;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
