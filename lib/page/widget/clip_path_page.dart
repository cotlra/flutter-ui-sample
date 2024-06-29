import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ClipPathPage extends StatefulWidget {
  const ClipPathPage({super.key, required this.title});

  final String title;

  @override
  State<ClipPathPage> createState() => _ClipPathPageState();
}

class _ClipPathPageState extends State<ClipPathPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ClipPath(
          clipper: _TriangleClipper(),
          child: SizedBox(
            width: 240,
            height: 240,
            child: ColoredBox(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

class _TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * 0.5, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
