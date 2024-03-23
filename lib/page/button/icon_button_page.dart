import 'package:flutter/material.dart';

class IconButtonPage extends StatefulWidget {
  const IconButtonPage({super.key, required this.title});

  final String title;

  @override
  State<IconButtonPage> createState() => _IconButtonPageState();
}

class _IconButtonPageState extends State<IconButtonPage> {
  bool _isDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
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
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: _isDisabled ? null : () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton.filled(
                    onPressed: _isDisabled ? null : () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton.filledTonal(
                    onPressed: _isDisabled ? null : () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton.outlined(
                    onPressed: _isDisabled ? null : () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
