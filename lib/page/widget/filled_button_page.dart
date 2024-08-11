import 'package:flutter/material.dart';

class FilledButtonPage extends StatefulWidget {
  const FilledButtonPage({super.key, required this.title});

  final String title;

  @override
  State<FilledButtonPage> createState() => _FilledButtonPageState();
}

class _FilledButtonPageState extends State<FilledButtonPage> {
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
              },
            ),
            const Divider(),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FilledButton(
                        onPressed: _enabled ? () {} : null,
                        child: const Text('FilledButton'),
                      ),
                      const SizedBox(height: 16),
                      FilledButton.tonal(
                        onPressed: _enabled ? () {} : null,
                        child: const Text('FilledButton'),
                      ),
                      const SizedBox(height: 16),
                      FilledButton.icon(
                        onPressed: _enabled ? () {} : null,
                        label: const Text('FilledButton'),
                        icon: const Icon(Icons.favorite_border),
                      ),
                      const SizedBox(height: 16),
                      FilledButton.tonalIcon(
                        onPressed: _enabled ? () {} : null,
                        label: const Text('FilledButton'),
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
