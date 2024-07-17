import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class InteractiveViewerPage extends StatefulWidget {
  const InteractiveViewerPage({super.key, required this.title});

  final String title;

  @override
  State<InteractiveViewerPage> createState() => _InteractiveViewerPageState();
}

class _InteractiveViewerPageState extends State<InteractiveViewerPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        InteractiveViewer(
          child: Image.asset('assets/images/image_original.jpg'),
        ),
      ],
    );
  }
}
