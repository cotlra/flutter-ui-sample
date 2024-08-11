import 'package:flutter/material.dart';

class IconButtonPage extends StatefulWidget {
  const IconButtonPage({super.key, required this.title});

  final String title;

  @override
  State<IconButtonPage> createState() => _IconButtonPageState();
}

class _IconButtonPageState extends State<IconButtonPage> {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: _enabled ? () {} : null,
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton.filled(
                      onPressed: _enabled ? () {} : null,
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton.filledTonal(
                      onPressed: _enabled ? () {} : null,
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton.outlined(
                      onPressed: _enabled ? () {} : null,
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
