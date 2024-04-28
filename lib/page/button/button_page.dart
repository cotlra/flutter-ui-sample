import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key, required this.title});

  final String title;

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  bool _isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SwitchListTile(
                    title: const Text('非活性'),
                    value: _isDisabled,
                    onChanged: (newValue) {
                      setState(() {
                        _isDisabled = newValue;
                      });
                    }),
                const Divider(),
                ElevatedButton(
                    onPressed: _isDisabled ? null : () {},
                    child: const Text('Elevated Button')),
                FilledButton(
                    onPressed: _isDisabled ? null : () {},
                    child: const Text('Filled Button')),
                FilledButton.tonal(
                    onPressed: _isDisabled ? null : () {},
                    child: const Text('Filled Button')),
                OutlinedButton(
                    onPressed: _isDisabled ? null : () {},
                    child: const Text('Outlined Button')),
                TextButton(
                    onPressed: _isDisabled ? null : () {},
                    child: const Text('Text Button')),
                CupertinoButton(
                    onPressed: _isDisabled ? null : () {},
                    child: const Text('Cupertino Button')),
                CupertinoButton.filled(
                    onPressed: _isDisabled ? null : () {},
                    child: const Text('Cupertino Button')),
                const Divider(),
                ElevatedButton.icon(
                  onPressed: _isDisabled ? null : () {},
                  label: const Text('Elevated Button'),
                  icon: const Icon(Icons.favorite_border),
                ),
                FilledButton.icon(
                  onPressed: _isDisabled ? null : () {},
                  label: const Text('Filled Button'),
                  icon: const Icon(Icons.favorite_border),
                ),
                FilledButton.tonalIcon(
                  onPressed: _isDisabled ? null : () {},
                  label: const Text('Filled Button'),
                  icon: const Icon(Icons.favorite_border),
                ),
                OutlinedButton.icon(
                  onPressed: _isDisabled ? null : () {},
                  label: const Text('Outlined Button'),
                  icon: const Icon(Icons.favorite_border),
                ),
                TextButton.icon(
                  onPressed: _isDisabled ? null : () {},
                  label: const Text('Text Button'),
                  icon: const Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
        ));
  }
}
