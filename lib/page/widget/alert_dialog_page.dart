import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key, required this.title});

  final String title;

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        ElevatedButton(
          child: const Text('Show AlertDialog'),
          onPressed: () async {
            String? result = await showDialog<String>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('AlertDialog'),
                  content: const Text('This is AlertDialog.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'Cancel');
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'OK');
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
