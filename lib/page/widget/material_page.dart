import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class MaterialWidgetPage extends StatefulWidget {
  const MaterialWidgetPage({super.key, required this.title});

  final String title;

  @override
  State<MaterialWidgetPage> createState() => _MaterialWidgetPageState();
}

class _MaterialWidgetPageState extends State<MaterialWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Material(
          type: MaterialType.canvas,
          elevation: 8,
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.primaryContainer,
          child: const SizedBox(
            width: 128,
            height: 128,
          ),
        ),
      ],
    );
  }
}
