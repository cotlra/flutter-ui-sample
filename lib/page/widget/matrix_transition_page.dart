import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class MatrixTransitionPage extends StatefulWidget {
  const MatrixTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<MatrixTransitionPage> createState() => _MatrixTransitionPageState();
}

class _MatrixTransitionPageState extends State<MatrixTransitionPage>
    with SingleTickerProviderStateMixin {
  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );

  @override
  void initState() {
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        MatrixTransition(
          animation: _animationController,
          onTransform: (value) {
            return Matrix4.identity()
              ..rotateZ(value * 2 * math.pi)
              ..scale(value, value);
          },
          child: const Text('MatrixTransition'),
        ),
      ],
    );
  }
}
