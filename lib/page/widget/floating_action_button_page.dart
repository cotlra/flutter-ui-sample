import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatefulWidget {
  const FloatingActionButtonPage({super.key, required this.title});

  final String title;

  @override
  State<FloatingActionButtonPage> createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _enabled ? () {} : null,
        heroTag: 'hero1',
        child: const Icon(Icons.add),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FloatingActionButton.small(
                          onPressed: _enabled ? () {} : null,
                          heroTag: 'hero2',
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(width: 16),
                        FloatingActionButton(
                          onPressed: _enabled ? () {} : null,
                          heroTag: 'hero3',
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(width: 16),
                        FloatingActionButton.large(
                          onPressed: _enabled ? () {} : null,
                          heroTag: 'hero4',
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    FloatingActionButton.extended(
                      onPressed: _enabled ? () {} : null,
                      heroTag: 'hero5',
                      label: const Text('add'),
                      icon: const Icon(Icons.add),
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
