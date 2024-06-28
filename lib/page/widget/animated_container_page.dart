import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key, required this.title});

  final String title;

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  final math.Random _random = math.Random();
  Color _color = const Color(0xff000000);
  double _width = 150;
  double _height = 50;

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        AnimatedContainer(
          padding: const EdgeInsets.all(16),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          color: _color,
          width: _width,
          height: _height,
          child: const Center(
            child: Text(
              'Animated Container',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _color = Color(_random.nextInt(0xffffff) + 0xff000000);
              _width = _random.nextInt(250) + 100;
              _height = _random.nextInt(250) + 50;
            });
          },
          child: const Text('Change Color & Size'),
        ),
      ],
    );
  }
}
