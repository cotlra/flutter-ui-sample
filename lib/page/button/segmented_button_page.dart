import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/style_const.dart';

class SegmentedButtonPage extends StatefulWidget {
  const SegmentedButtonPage({super.key, required this.title});

  final String title;

  @override
  State<SegmentedButtonPage> createState() =>
      _SegmentedButtonPageState();
}

class _SegmentedButtonPageState extends State<SegmentedButtonPage> {
  bool _isDisabled = false;
  Set<int> _selectedValues1 = {0};
  String _selectedValue2 = 'Day';
  String? _selectedValue3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SwitchListTile(
              title: const Text('非活性'),
              value: _isDisabled,
              onChanged: (newValue) {
                setState(() {
                  _isDisabled = newValue;
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
                    selected: _selectedValues1,
                    // selected: { _selectedValue },
                    multiSelectionEnabled: true,
                    onSelectionChanged: _isDisabled ? null : (newSelection) {
                      setState(() {
                        _selectedValues1 = newSelection;
                        // _selectedValue = newSelection.first;
                      });
                    },
                  ),
                  StyleConsts.sizedBoxH16,
                  CupertinoSegmentedControl<String>(
                    groupValue: _selectedValue2,
                    onValueChanged: (String value) {
                      setState(() {
                        _selectedValue2 = value;
                      });
                    },
                    children: const {
                      'Day': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Day'),
                      ),
                      'Week': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Week'),
                      ),
                      'Month': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Month'),
                      ),
                      'Year': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Year'),
                      ),
                    },
                  ),
                  StyleConsts.sizedBoxH16,
                  CupertinoSlidingSegmentedControl<String>(
                    groupValue: _selectedValue3,
                    onValueChanged: (String? value) {
                      setState(() {
                        _selectedValue3 = value;
                      });
                    },
                    children: const {
                      'Day': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Day'),
                      ),
                      'Week': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Week'),
                      ),
                      'Month': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Month'),
                      ),
                      'Year': Padding(
                        padding: StyleConsts.paddingX16,
                        child: Text('Year'),
                      ),
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
