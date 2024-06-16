import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class FlutterLogoPage extends StatefulWidget {
  const FlutterLogoPage({super.key, required this.title});

  final String title;

  @override
  State<FlutterLogoPage> createState() => _FlutterLogoPageState();
}

class _FlutterLogoPageState extends State<FlutterLogoPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: const [
        FlutterLogo(),
      ],
    );
  }
}
