import 'package:flutter/material.dart';

class AboutDialogPage extends StatefulWidget {
  const AboutDialogPage({super.key, required this.title});

  final String title;

  @override
  State<AboutDialogPage> createState() => _AboutDialogPageState();
}

class _AboutDialogPageState extends State<AboutDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show AboutDialog'),
          onPressed: () {
            showAboutDialog(context: context);
          },
        ),
      ),
    );
  }
}
