import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key, required this.title});

  final String title;

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 240,
              width: 128,
              color: Theme.of(context).primaryColor,
            ),
            Container(
              height: 128,
              width: 240,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ],
        )
      ],
    );
  }
}
