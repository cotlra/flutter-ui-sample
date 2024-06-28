import 'package:flutter/material.dart';

import '../common/base_frame.dart';

class FreePage extends StatefulWidget {
  const FreePage({super.key, required this.title});

  final String title;

  @override
  State<FreePage> createState() => _FreePageState();
}

class _FreePageState extends State<FreePage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [],
    );
  }
}
