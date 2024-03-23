import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool _isSwitched1 = false;
  bool _isSwitched2 = false;
  String? _currentPullDownValue;
  double _currentSliderValue1 = 0;
  double _currentSliderValue2 = 0;
  RangeValues _rangeValues = const RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                width: StyleConsts.value208,
                child: TextField(),
              ),
              StyleConsts.sizedBoxH16,
              const SizedBox(
                width: StyleConsts.value208,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              StyleConsts.sizedBoxH16,
              const SizedBox(
                width: StyleConsts.value208,
                child: CupertinoTextField(),
              ),
              Switch(
                value: _isSwitched1,
                onChanged: (newValue) {
                  setState(() {
                    _isSwitched1 = newValue;
                  });
                },
              ),
              CupertinoSwitch(
                value: _isSwitched2,
                onChanged: (newValue) {
                  setState(() {
                    _isSwitched2 = newValue;
                  });
                },
              ),
              Checkbox(
                value: _isChecked1,
                onChanged: (newValue) {
                  setState(() {
                    _isChecked1 = newValue;
                  });
                },
              ),
              CupertinoCheckbox(
                value: _isChecked2,
                onChanged: (newValue) {
                  setState(() {
                    _isChecked2 = newValue;
                  });
                },
              ),
              DropdownMenu(
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: '項目1', label: '項目1'),
                  DropdownMenuEntry(value: '項目2', label: '項目2'),
                  DropdownMenuEntry(value: '項目3', label: '項目3'),
                ],
                onSelected: (value) {
                  _currentPullDownValue = value;
                },
              ),
              StyleConsts.sizedBoxH16,
              DropdownMenu(
                inputDecorationTheme: const InputDecorationTheme(filled: true),
                dropdownMenuEntries: const [
                  DropdownMenuEntry(value: '項目1', label: '項目1'),
                  DropdownMenuEntry(value: '項目2', label: '項目2'),
                  DropdownMenuEntry(value: '項目3', label: '項目3'),
                ],
                onSelected: (value) {
                  _currentPullDownValue = value;
                },
              ),
              Slider(
                value: _currentSliderValue1,
                max: 100,
                divisions: 10,
                label: _currentSliderValue1.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue1 = value;
                  });
                },
              ),
              RangeSlider(
                max: 100,
                min: 0,
                divisions: 10,
                values: _rangeValues,
                onChanged: (RangeValues value) {
                  setState(() {
                    _rangeValues = value;
                  });
                },
              ),
              CupertinoSlider(
                value: _currentSliderValue2,
                max: 100,
                divisions: 10,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue2 = value;
                  });
                },
              ),
            ],
          ),
        ));
  }
}
