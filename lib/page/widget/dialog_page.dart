import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key, required this.title});

  final String title;

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ElevatedButton(
          child: const Text('Show Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Dialog(
                  child: Padding(
                    padding: EdgeInsets.all(32),
                    child: Text('This is Dialog.'),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
