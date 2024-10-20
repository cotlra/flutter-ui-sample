import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SlideTransitionPage extends StatefulWidget {
  const SlideTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<SlideTransitionPage> createState() => _SlideTransitionPageState();
}

class _SlideTransitionPageState extends State<SlideTransitionPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );
  late final _inAnimation =
      Tween<Offset>(begin: const Offset(4, 0), end: Offset.zero).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0, 0.5, curve: Curves.fastOutSlowIn),
    ),
  );
  late final _outAnimation =
      Tween<Offset>(begin: Offset.zero, end: const Offset(-4, 0)).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.5, 1, curve: Curves.fastOutSlowIn),
    ),
  );

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
        SlideTransition(
          position: _inAnimation,
          child: SlideTransition(
            position: _outAnimation,
            child: const Text('Slide Transition'),
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        ElevatedButton(
          onPressed: () {
            if (_animationController.value < 0.5 ||
                _animationController.value == 1) {
              _animationController
                ..value = 0
                ..animateTo(0.5);
            } else {
              _animationController.animateTo(1);
            }
          },
          child: const Text('Press'),
        ),
      ],
    );
  }
}
