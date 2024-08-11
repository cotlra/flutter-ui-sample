import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({super.key, required this.title});

  final String title;

  @override
  State<OpacityPage> createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: List.generate(6, (index) {
        final opacity = index * 0.2;
        return Opacity(
          opacity: opacity,
          child: Container(
            margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            width: 80,
            height: 80,
            color: Theme.of(context).colorScheme.primaryContainer,
            alignment: Alignment.center,
            child: Text('${(opacity * 100).round()}%'),
          ),
        );
      }),
    );
  }
}
