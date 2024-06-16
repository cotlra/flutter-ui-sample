import 'package:flutter/material.dart';

class OutlinedButtonPage extends StatefulWidget {
  const OutlinedButtonPage({super.key, required this.title});

  final String title;

  @override
  State<OutlinedButtonPage> createState() => _OutlinedButtonPageState();
}

class _OutlinedButtonPageState extends State<OutlinedButtonPage> {
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
                      OutlinedButton(
                        onPressed: _enabled ? () {} : null,
                        child: const Text('OutlinedButton'),
                      ),
                      const SizedBox(height: 16),
                      OutlinedButton.icon(
                        onPressed: _enabled ? () {} : null,
                        label: const Text('OutlinedButton'),
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
