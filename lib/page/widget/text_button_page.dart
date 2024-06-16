import 'package:flutter/material.dart';

class TextButtonPage extends StatefulWidget {
  const TextButtonPage({super.key, required this.title});

  final String title;

  @override
  State<TextButtonPage> createState() => _TextButtonPageState();
}

class _TextButtonPageState extends State<TextButtonPage> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile(
                title: const Text('Enabled'),
                value: _enabled,
                onChanged: (newValue) {
                  setState(() {
                    _enabled = newValue;
                  });
                }),
            const Divider(),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: _enabled ? () {} : null,
                        child: const Text('TextButton'),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: _enabled ? () {} : null,
                        label: const Text('TextButton'),
                        icon: const Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
