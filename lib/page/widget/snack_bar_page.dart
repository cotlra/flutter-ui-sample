import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key, required this.title});
  final String title;

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ElevatedButton(
          child: const Text('Show SnackBar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('This is SnackBar.'),
                action: SnackBarAction(
                  label: 'Close',
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
