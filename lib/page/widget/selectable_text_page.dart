import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SelectableTextPage extends StatefulWidget {
  const SelectableTextPage({super.key, required this.title});

  final String title;

  @override
  State<SelectableTextPage> createState() => _SelectableTextPageState();
}

class _SelectableTextPageState extends State<SelectableTextPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        SelectableText('You can select this.'),
      ],
    );
  }
}
