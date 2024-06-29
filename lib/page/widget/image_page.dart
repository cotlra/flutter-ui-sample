import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key, required this.title});

  final String title;

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        // You need to add folder to pubspec.yaml.
        Image.asset('assets/images/image_small.jpg'),
      ],
    );
  }
}
