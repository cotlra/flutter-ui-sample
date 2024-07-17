import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class PhysicalShapePage extends StatefulWidget {
  const PhysicalShapePage({super.key, required this.title});

  final String title;

  @override
  State<PhysicalShapePage> createState() => _PhysicalShapePageState();
}

class _PhysicalShapePageState extends State<PhysicalShapePage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        PhysicalShape(
          elevation: 4,
          clipper: _MyClipper(),
          color: Theme.of(context).primaryColor,
          child: const SizedBox(
            height: 128,
            width: 128,
          ),
        ),
      ],
    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(0, size.height)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
