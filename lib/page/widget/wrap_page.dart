import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class WrapPage extends StatefulWidget {
  const WrapPage({super.key, required this.title});

  final String title;

  @override
  State<WrapPage> createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Wrap(
          spacing: 16,
          runSpacing: 32,
          children: [
            for (var i = 0; i < 53; i++)
              Container(
                height: 64,
                width: 64,
                color: Theme.of(context).primaryColor,
              ),
          ],
        )
      ],
    );
  }
}
