import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ClipRectPage extends StatefulWidget {
  const ClipRectPage({super.key, required this.title});

  final String title;

  @override
  State<ClipRectPage> createState() => _ClipRectPageState();
}

class _ClipRectPageState extends State<ClipRectPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SizedBox(
          width: 240,
          height: 240,
          child: ClipRect(
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text('ClipRect 2'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
