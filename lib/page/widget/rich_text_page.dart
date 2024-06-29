import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class RichTextPage extends StatefulWidget {
  const RichTextPage({super.key, required this.title});

  final String title;

  @override
  State<RichTextPage> createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {
  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    return BaseFrame(
      title: widget.title,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'This ',
                style: TextStyle(
                  color: colorSheme.tertiary,
                  fontSize: 24,
                ),
              ),
              TextSpan(
                text: 'is ',
                style: TextStyle(
                  color: colorSheme.secondary,
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: 'RichText',
                style: TextStyle(
                  color: colorSheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const TextSpan(text: '.'),
            ],
          ),
        ),
      ],
    );
  }
}
