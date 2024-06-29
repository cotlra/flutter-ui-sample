import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ColorFilteredPage extends StatefulWidget {
  const ColorFilteredPage({super.key, required this.title});

  final String title;

  @override
  State<ColorFilteredPage> createState() => _ColorFilteredPageState();
}

class _ColorFilteredPageState extends State<ColorFilteredPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.blue, BlendMode.overlay),
        ),
      ],
    );
  }
}
