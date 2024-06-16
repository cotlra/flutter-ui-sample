import 'package:flutter/material.dart';

import '../../common/base_frame.dart';
import '../../components/blink.dart';

class BlinkPage extends StatefulWidget {
  const BlinkPage({super.key, required this.title});
  final String title;

  @override
  State<BlinkPage> createState() => _BlinkPageState();
}

class _BlinkPageState extends State<BlinkPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        Blink(
          duration: Duration(seconds: 1),
          child: Text('Blink'),
        ),
      ],
    );
  }
}
