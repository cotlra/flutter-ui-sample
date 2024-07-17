import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ScaleTransitionPage extends StatefulWidget {
  const ScaleTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<ScaleTransitionPage> createState() => _ScaleTransitionPageState();
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 500))
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            _animationController.reverse();
          }
        });

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ScaleTransition(
          scale: Tween<double>(begin: 1, end: 2).animate(
            CurvedAnimation(
              parent: _animationController,
              curve: Curves.fastOutSlowIn,
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
              _animationController.forward();
            },
            child: Text('Scale Transition'),
          ),
        ),
      ],
    );
  }
}
