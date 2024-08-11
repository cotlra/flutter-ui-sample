import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class FadeScaleTransitionPage extends StatefulWidget {
  const FadeScaleTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<FadeScaleTransitionPage> createState() =>
      _FadeScaleTransitionPageState();
}

class _FadeScaleTransitionPageState extends State<FadeScaleTransitionPage> {
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
            return FadeScaleTransition(
              animation: primaryAnimation,
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
