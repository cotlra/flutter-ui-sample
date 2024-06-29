import 'dart:ui';

import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class BackdropFilterPage extends StatefulWidget {
  const BackdropFilterPage({super.key, required this.title});

  final String title;

  @override
  State<BackdropFilterPage> createState() => _BackdropFilterPageState();
}

class _BackdropFilterPageState extends State<BackdropFilterPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Stack(
          children: [
            Image.asset('assets/images/image_small.jpg'),
            Positioned(
              top: 50,
              left: 50,
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 20,
                    sigmaY: 20,
                  ),
                  child: const SizedBox(
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
