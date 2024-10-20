import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<RotationTransitionPage> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
    with SingleTickerProviderStateMixin {
  late final _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 2));

  @override
  void initState() {
    _animationController.repeat();
    super.initState();
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
        RotationTransition(
          turns: _animationController,
          child: const Text('RotationTransitionPage'),
        ),
      ],
    );
  }
}
