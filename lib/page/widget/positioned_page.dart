import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class PositionedPage extends StatefulWidget {
  const PositionedPage({super.key, required this.title});

  final String title;

  @override
  State<PositionedPage> createState() => _PositionedPageState();
}

class _PositionedPageState extends State<PositionedPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Container(
          width: 360,
          height: 240,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: const Stack(
            children: [
              Positioned(
                top: 24,
                left: 16,
                child: Text('top: 24, left: 16'),
              ),
              Positioned(
                right: 32,
                bottom: 64,
                child: Text('right: 32, bottom: 64'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
