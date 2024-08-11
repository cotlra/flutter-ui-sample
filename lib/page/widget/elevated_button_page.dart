import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatefulWidget {
  const ElevatedButtonPage({super.key, required this.title});

  final String title;

  @override
  State<ElevatedButtonPage> createState() => _ElevatedButtonPageState();
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {
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
                      ElevatedButton(
                        onPressed: _enabled ? () {} : null,
                        child: const Text('ElevatedButton'),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: _enabled ? () {} : null,
                        label: const Text('ElevatedButton'),
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
