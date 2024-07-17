import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class DecoratedBoxPage extends StatefulWidget {
  const DecoratedBoxPage({super.key, required this.title});

  final String title;

  @override
  State<DecoratedBoxPage> createState() => _DecoratedBoxPageState();
}

class _DecoratedBoxPageState extends State<DecoratedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SizedBox(
          height: 240,
          width: 240,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 4,
              ),
            ),
          ),
        )
      ],
    );
  }
}
