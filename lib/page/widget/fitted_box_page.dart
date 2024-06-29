import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class FittedBoxPage extends StatefulWidget {
  const FittedBoxPage({super.key, required this.title});

  final String title;

  @override
  State<FittedBoxPage> createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SizedBox(
          height: 128,
          width: 240,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.asset('assets/images/image_small.jpg'),
          ),
        ),
      ],
    );
  }
}
