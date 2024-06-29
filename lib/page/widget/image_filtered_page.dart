import 'dart:ui';

import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ImageFilteredPage extends StatefulWidget {
  const ImageFilteredPage({super.key, required this.title});

  final String title;

  @override
  State<ImageFilteredPage> createState() => _ImageFilteredPageState();
}

class _ImageFilteredPageState extends State<ImageFilteredPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Image.asset('assets/images/image_small.jpg'),
        ),
        const Text('ImageFilter.blur'),
        const SizedBox(height: 32),
        ImageFiltered(
          imageFilter: ImageFilter.dilate(radiusX: 2, radiusY: 2),
          child: Image.asset('assets/images/image_small.jpg'),
        ),
        const Text('ImageFilter.dilate'),
        const SizedBox(height: 32),
        ImageFiltered(
          imageFilter: ImageFilter.erode(radiusX: 2, radiusY: 2),
          child: Image.asset('assets/images/image_small.jpg'),
        ),
        const Text('ImageFilter.erode'),
        const SizedBox(height: 32),
        ImageFiltered(
          imageFilter: ImageFilter.matrix(Matrix4.rotationZ(0.5).storage),
          child: Image.asset('assets/images/image_small.jpg'),
        ),
        const Text('ImageFilter.matrix'),
      ],
    );
  }
}
