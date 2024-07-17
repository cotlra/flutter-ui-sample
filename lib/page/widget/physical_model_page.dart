import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class PhysicalModelPage extends StatefulWidget {
  const PhysicalModelPage({super.key, required this.title});

  final String title;

  @override
  State<PhysicalModelPage> createState() => _PhysicalModelPageState();
}

class _PhysicalModelPageState extends State<PhysicalModelPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        PhysicalModel(
          color: Theme.of(context).primaryColor,
          elevation: 8,
          borderRadius: BorderRadius.circular(8),
          child: const SizedBox(
            height: 128,
            width: 128,
          ),
        ),
      ],
    );
  }
}
