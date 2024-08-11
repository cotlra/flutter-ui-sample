import 'package:flutter/material.dart';

import '../../common/base_frame.dart';
import '../../components/custom_calender.dart';

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
      children: const [
        CustomCalender(),
      ],
    );
  }
}
