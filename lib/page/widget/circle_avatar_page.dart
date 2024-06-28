import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class CircleAvatarPage extends StatefulWidget {
  const CircleAvatarPage({super.key, required this.title});

  final String title;

  @override
  State<CircleAvatarPage> createState() => _CircleAvatarPageState();
}

class _CircleAvatarPageState extends State<CircleAvatarPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          child: const Text('C'),
        ),
      ],
    );
  }
}
