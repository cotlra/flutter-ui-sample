import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class PositionedTransitionPage extends StatefulWidget {
  const PositionedTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<PositionedTransitionPage> createState() =>
      _PositionedTransitionPageState();
}

class _PositionedTransitionPageState extends State<PositionedTransitionPage>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );

  late final _animation = RelativeRectTween(
          begin: const RelativeRect.fromLTRB(10, 0, 0, 0),
          end: const RelativeRect.fromLTRB(0, 0, 10, 0))
      .animate(_controller);

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
        Container(
          child: PositionedTransition(
            rect: _animation,
            child: const Text('Positioned Transition'),
          ),
        ),
      ],
    );
  }
}
