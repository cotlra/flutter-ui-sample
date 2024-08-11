import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class InkwellPage extends StatefulWidget {
  const InkwellPage({super.key, required this.title});

  final String title;

  @override
  State<InkwellPage> createState() => _InkwellPageState();
}

class _InkwellPageState extends State<InkwellPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        InkWell(
          splashFactory: InkRipple.splashFactory,
          onTap: () {},
          child: Ink(
            color: Theme.of(context).primaryColor,
            width: 240,
            height: 240,
          ),
        ),
      ],
    );
  }
}
