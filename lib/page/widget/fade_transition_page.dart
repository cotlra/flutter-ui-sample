import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation =
      Tween(begin: 0.0, end: 1.0).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        FadeTransition(
          opacity: _animation,
          child: const FlutterLogo(
            size: 240,
          ),
        ),
      ],
    );
  }
}
