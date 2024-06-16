import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key, required this.title});

  final String title;

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
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
      ),
    );
  }
}
