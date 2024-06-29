import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class RotatedBoxPage extends StatefulWidget {
  const RotatedBoxPage({super.key, required this.title});

  final String title;

  @override
  State<RotatedBoxPage> createState() => _RotatedBoxPageState();
}

class _RotatedBoxPageState extends State<RotatedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                'Rotated Box',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
                'This is sample text.\nThis is sample text.\nThis is sample text.\nThis is sample text.\nThis is sample text.')
          ],
        )
      ],
    );
  }
}
