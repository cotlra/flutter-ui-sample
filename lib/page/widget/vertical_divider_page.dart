import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class VerticalDividerPage extends StatefulWidget {
  const VerticalDividerPage({super.key, required this.title});

  final String title;

  @override
  State<VerticalDividerPage> createState() => _VerticalDividerPageState();
}

class _VerticalDividerPageState extends State<VerticalDividerPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        SizedBox(
          height: 240,
          width: 240,
          child: VerticalDivider(),
        ),
      ],
    );
  }
}
