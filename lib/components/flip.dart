import 'dart:math';

import 'package:flutter/material.dart';

class Flip extends StatefulWidget {
  const Flip({
    super.key,
    required this.isFront,
    this.duration = const Duration(milliseconds: 500),
    required this.front,
    required this.back,
    required this.rotateX,
  });

  final bool isFront;
  final Duration duration;
  final Widget front;
  final Widget back;
  final bool rotateX;

  @override
  State<Flip> createState() => _FlipState();
}

class _FlipState extends State<Flip> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: widget.duration,
      transitionBuilder: _transitionBuilder,
      layoutBuilder: (w, list) {
        return Stack(
          children: [w!, ...list],
        );
      },
      child: widget.isFront
          ? Container(
              key: const ValueKey(true),
              child: widget.front,
            )
          : Container(
              key: const ValueKey(false),
              child: widget.back,
            ),
    );
  }

  Widget _transitionBuilder(Widget w, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: w,
      builder: (BuildContext context, Widget? child) {
        final isUnder = (ValueKey(widget.isFront) != w.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1 : 1;
        final value =
            (isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value)
                .toDouble();
        return Transform(
          transform: widget.rotateX
              ? (Matrix4.rotationX(value)..setEntry(0, 3, tilt))
              : (Matrix4.rotationY(value)..setEntry(3, 0, tilt)),
          alignment: Alignment.center,
          child: child,
        );
      },
    );
  }
}
