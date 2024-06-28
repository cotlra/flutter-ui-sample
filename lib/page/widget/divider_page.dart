import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class DividerPage extends StatefulWidget {
  const DividerPage({super.key, required this.title});

  final String title;

  @override
  State<DividerPage> createState() => _DividerPageState();
}

class _DividerPageState extends State<DividerPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        Divider(),
      ],
    );
  }
}
