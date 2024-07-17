import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class VisibilityPage extends StatefulWidget {
  const VisibilityPage({super.key, required this.title});

  final String title;

  @override
  State<VisibilityPage> createState() => _VisibilityPageState();
}

class _VisibilityPageState extends State<VisibilityPage> {
  var _visible = true;
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Visibility(
          visible: _visible,
          child: const Text('Visibility'),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          child: const Text('Change Visibility'),
        ),
      ],
    );
  }
}
