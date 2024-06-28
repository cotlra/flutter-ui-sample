import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({super.key, required this.title});

  final String title;

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  var _showFirst = true;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BaseFrame(
      title: widget.title,
      children: [
        AnimatedCrossFade(
          firstChild: ClipOval(
            child: Container(
              width: 120,
              height: 120,
              color: colorScheme.primaryContainer,
              alignment: Alignment.center,
              child: const Text('First'),
            ),
          ),
          secondChild: Container(
            width: 120,
            height: 120,
            color: colorScheme.secondaryContainer,
            alignment: Alignment.center,
            child: const Text(
              'Second',
              textAlign: TextAlign.center,
            ),
          ),
          crossFadeState:
              _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: const Text('Change'),
        ),
      ],
    );
  }
}
