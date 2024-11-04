import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );

  @override
  void initState() {
    _controller.repeat(reverse: true);
    super.initState();
  }

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
          opacity: _controller,
          child: const Text('Fade Transition'),
        ),
      ],
    );
  }
}
