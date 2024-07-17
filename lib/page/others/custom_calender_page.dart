import 'package:flutter/material.dart';
import 'package:ui_sample/components/custom_calender.dart';

import '../../common/base_frame.dart';

class CustomCalenderPage extends StatefulWidget {
  const CustomCalenderPage({super.key, required this.title});

  final String title;

  @override
  State<CustomCalenderPage> createState() => _CustomCalenderPageState();
}

class _CustomCalenderPageState extends State<CustomCalenderPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        CustomCalender(),
      ],
    );
  }
}
