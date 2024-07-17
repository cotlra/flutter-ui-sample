import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ColoredBoxPage extends StatefulWidget {
  const ColoredBoxPage({super.key, required this.title});

  final String title;

  @override
  State<ColoredBoxPage> createState() => _ColoredBoxPageState();
}

class _ColoredBoxPageState extends State<ColoredBoxPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SizedBox(
          width: 128,
          height: 128,
          child: ColoredBox(
            color: Theme.of(context).primaryColor,
            child: const Center(
              child: Text('ColoredBox'),
            ),
          ),
        ),
      ],
    );
  }
}
