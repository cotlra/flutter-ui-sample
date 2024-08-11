import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key, required this.title});

  final String title;

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Container(
          width: 128,
          height: 80,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(32),
          alignment: Alignment.bottomRight,
          transform: Matrix4.rotationZ(0.2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: Theme.of(context).colorScheme.primaryContainer,
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
              width: 4,
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor,
                spreadRadius: 4,
                blurRadius: 4,
                offset: const Offset(8, 8),
              ),
            ],
          ),
          child: const Text('Text'),
        ),
        const SizedBox(height: 32),
        Container(
          width: 128,
          height: 128,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 32),
        Container(
          width: double.infinity,
          height: 80,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ],
    );
  }
}
