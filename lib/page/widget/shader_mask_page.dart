import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ShaderMaskPage extends StatefulWidget {
  const ShaderMaskPage({super.key, required this.title});

  final String title;

  @override
  State<ShaderMaskPage> createState() => _ShaderMaskPageState();
}

class _ShaderMaskPageState extends State<ShaderMaskPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.0,
                0.48,
                1.0,
              ],
              colors: <Color>[
                Color(0xFF22E1FF),
                Color(0xFF1D8FE1),
                Color(0xFF625EB1),
              ],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: const Icon(
            Icons.favorite,
            color: Colors.white,
            size: 128,
          ),
        ),
      ],
    );
  }
}
