import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ClipOvalPage extends StatefulWidget {
  const ClipOvalPage({super.key, required this.title});

  final String title;

  @override
  State<ClipOvalPage> createState() => _ClipOvalPageState();
}

class _ClipOvalPageState extends State<ClipOvalPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ClipOval(
          child: SizedBox(
            width: 240,
            height: 240,
            child: ColoredBox(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
