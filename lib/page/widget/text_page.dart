import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key, required this.title});

  final String title;

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        Text('This is Text.'),
      ],
    );
  }
}
