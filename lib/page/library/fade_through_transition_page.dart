import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class FadeThroughTransitionPage extends StatefulWidget {
  const FadeThroughTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<FadeThroughTransitionPage> createState() =>
      _FadeThroughTransitionPageState();
}

class _FadeThroughTransitionPageState extends State<FadeThroughTransitionPage> {
  var _isOne = true;
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        PageTransitionSwitcher(
          duration: const Duration(milliseconds: 480),
          transitionBuilder: (
            Widget child,
            Animation<double> primaryAnimation,
            Animation<double> secondaryAnimation,
          ) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              fillColor: Colors.transparent,
              child: child,
            );
          },
          child: _isOne
              ? const Text(
                  'One',
                  key: ValueKey('One'),
                )
              : const Text(
                  'Two',
                  key: ValueKey('Two'),
                ),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isOne = !_isOne;
            });
          },
          child: const Text('Press'),
        ),
      ],
    );
  }
}
