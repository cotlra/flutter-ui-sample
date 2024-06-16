import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class CircularProgressIndicatorPage extends StatefulWidget {
  const CircularProgressIndicatorPage({super.key, required this.title});

  final String title;

  @override
  State<CircularProgressIndicatorPage> createState() =>
      _CircularProgressIndicatorPageState();
}

class _CircularProgressIndicatorPageState
    extends State<CircularProgressIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        CircularProgressIndicator(),
      ],
    );
  }
}
