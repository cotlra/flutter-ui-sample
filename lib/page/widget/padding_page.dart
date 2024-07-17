import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class PaddingPage extends StatefulWidget {
  const PaddingPage({super.key, required this.title});

  final String title;

  @override
  State<PaddingPage> createState() => _PaddingPageState();
}

class _PaddingPageState extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SizedBox(
          width: 240,
          height: 240,
          child: ColoredBox(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: const Padding(
              padding: EdgeInsets.all(32),
              child: Text('← This is Padding.'),
            ),
          ),
        ),
      ],
    );
  }
}
