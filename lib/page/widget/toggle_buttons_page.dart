import 'package:flutter/material.dart';

class ToggleButtonsPage extends StatefulWidget {
  const ToggleButtonsPage({super.key, required this.title});

  final String title;

  @override
  State<ToggleButtonsPage> createState() => _ToggleButtonsPageState();
}

class _ToggleButtonsPageState extends State<ToggleButtonsPage> {
  bool enabled = true;
  final List<bool> _toggleStateList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SwitchListTile(
                title: const Text('Enabled'),
                value: enabled,
                onChanged: (newValue) {
                  setState(() {
                    enabled = newValue;
                  });
                }),
            const Divider(),
            Expanded(
              child: Center(
                child: ToggleButtons(
                  isSelected: _toggleStateList,
                  onPressed: enabled
                      ? (index) {
                          setState(() {
                            _toggleStateList[index] = !_toggleStateList[index];
                          });
                        }
                      : null,
                  children: const [
                    Icon(Icons.home),
                    Icon(Icons.search),
                    Icon(Icons.settings),
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
