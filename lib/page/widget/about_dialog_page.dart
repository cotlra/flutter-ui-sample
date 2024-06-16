import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class AboutDialogPage extends StatefulWidget {
  const AboutDialogPage({super.key, required this.title});

  final String title;

  @override
  State<AboutDialogPage> createState() => _AboutDialogPageState();
}

class _AboutDialogPageState extends State<AboutDialogPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ElevatedButton(
          child: const Text('Show AboutDialog'),
          onPressed: () {
            showAboutDialog(context: context);
          },
        ),
      ],
    );
  }
}
