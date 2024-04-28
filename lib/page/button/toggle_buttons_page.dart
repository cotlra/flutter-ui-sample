import 'package:flutter/material.dart';

class ToggleButtonsPage extends StatefulWidget {
  const ToggleButtonsPage({super.key, required this.title});

  final String title;

  @override
  State<ToggleButtonsPage> createState() => _ToggleButtonsPageState();
}

class _ToggleButtonsPageState extends State<ToggleButtonsPage> {
  bool _isDisabled = false;
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
                child: ToggleButtons(
                  isSelected: _toggleStateList,
                  onPressed: _isDisabled
                      ? null
                      : (index) {
                          setState(() {
                            _toggleStateList[index] = !_toggleStateList[index];
                          });
                        },
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
