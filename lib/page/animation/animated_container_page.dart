import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key, required this.title});

  final String title;

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Color _color = const Color(0xff000000);
  final math.Random _random = math.Random();
  double _width = 150;
  double _height = 50;

  @override
  void initState() {
    Future(() async {
      while (true) {
        if (mounted) {
          setState(() {
            _color = Color(_random.nextInt(0xffffff) + 0xff000000);
            _width = _random.nextInt(250) + 100;
            _height = _random.nextInt(250) + 50;
          });
        }
        await Future.delayed(const Duration(seconds: 2));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
            child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          color: _color,
          width: _width,
          height: _height,
          child: const Center(
            child: Text('Animated Container'),
          ),
        )),
      ),
    );
  }
}
