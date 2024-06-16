import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key, required this.title});

  final String title;

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SizedBox(
          width: 208,
          child: TextField(
            controller: _controller1,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 208,
          child: TextField(
            controller: _controller2,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
