import 'package:flutter/material.dart';

class RangeSliderPage extends StatefulWidget {
  const RangeSliderPage({super.key, required this.title});

  final String title;

  @override
  State<RangeSliderPage> createState() => _RangeSliderPageState();
}

class _RangeSliderPageState extends State<RangeSliderPage> {
  RangeValues _values = const RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RangeSlider(
          max: 100,
          min: 0,
          divisions: 10,
          values: _values,
          onChanged: (RangeValues value) {
            setState(() {
              _values = value;
            });
          },
        ),
      ),
    );
  }
}
