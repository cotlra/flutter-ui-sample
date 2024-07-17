import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SharedAxisTransitionPage extends StatefulWidget {
  const SharedAxisTransitionPage({super.key, required this.title});

  final String title;

  @override
  State<SharedAxisTransitionPage> createState() =>
      _SharedAxisTransitionPageState();
}

class _SharedAxisTransitionPageState extends State<SharedAxisTransitionPage> {
  var _isOne = true;
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        PageTransitionSwitcher(
          duration: const Duration(milliseconds: 480),
          transitionBuilder: (Widget child, Animation<double> primaryAnimation,
              Animation<double> secondaryAnimation) {
            return SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.vertical,
              fillColor: Colors.transparent,
              child: child,
            );
          },
          child: _isOne
              ? Text(
                  'One',
                  key: ValueKey('One'),
                )
              : Text(
                  'Two',
                  key: ValueKey('Two'),
                ),
        ),
        SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isOne = !_isOne;
            });
          },
          child: Text('Press'),
        ),
      ],
    );
  }
}
