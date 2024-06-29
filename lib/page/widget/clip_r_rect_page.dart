import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({super.key, required this.title});

  final String title;

  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
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
