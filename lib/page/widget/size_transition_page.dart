import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SizeTransitionPage extends StatefulWidget {
  const SizeTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<SizeTransitionPage> createState() => _SizeTransitionPageState();
}

class _SizeTransitionPageState extends State<SizeTransitionPage>
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
        SizeTransition(
          axis: Axis.horizontal,
          sizeFactor: _animationController,
          child: const Text('SizeTransition'),
        )
      ],
    );
  }
}
