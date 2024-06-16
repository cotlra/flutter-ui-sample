import 'package:flutter/material.dart';

class SegmentedButtonPage extends StatefulWidget {
  const SegmentedButtonPage({super.key, required this.title});

  final String title;

  @override
  State<SegmentedButtonPage> createState() => _SegmentedButtonPageState();
}

class _SegmentedButtonPageState extends State<SegmentedButtonPage> {
  bool _enabled = true;
  Set<int> _selectedValues = {0};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SwitchListTile(
                title: const Text('Enabled'),
                value: _enabled,
                onChanged: (newValue) {
                  setState(() {
                    _enabled = newValue;
                  });
                }),
            const Divider(),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SegmentedButton<int>(
                      segments: const <ButtonSegment<int>>[
                        ButtonSegment<int>(
                          value: 0,
                          label: Text('Day'),
                        ),
                        ButtonSegment<int>(
                          value: 1,
                          label: Text('Week'),
                        ),
                        ButtonSegment<int>(
                          value: 2,
                          label: Text('Month'),
                        ),
                        ButtonSegment<int>(
                          value: 3,
                          label: Text('Year'),
                        ),
                      ],
                      selected: _selectedValues,
                      // selected: { _selectedValue },
                      multiSelectionEnabled: true,
                      onSelectionChanged: _enabled
                          ? (newSelection) {
                              setState(() {
                                _selectedValues = newSelection;
                                // _selectedValue = newSelection.first;
                              });
                            }
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
