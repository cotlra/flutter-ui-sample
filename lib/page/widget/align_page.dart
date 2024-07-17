import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({super.key, required this.title});

  final String title;

  @override
  State<AlignPage> createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Container(
          width: 360,
          height: 240,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: const Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text('topLeft'),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text('topCenter'),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text('topRight'),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('centerLeft'),
              ),
              Align(
                alignment: Alignment.center,
                child: Text('center'),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('centerRight'),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('bottomLeft'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('bottomCenter'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text('bottomRight'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
