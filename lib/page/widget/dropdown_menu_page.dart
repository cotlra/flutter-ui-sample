import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class DropdownMenuPage extends StatefulWidget {
  const DropdownMenuPage({super.key, required this.title});

  final String title;

  @override
  State<DropdownMenuPage> createState() => _DropdownMenuPageState();
}

class _DropdownMenuPageState extends State<DropdownMenuPage> {
  String? _value1;
  String? _value2;

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        DropdownMenu(
          dropdownMenuEntries: const [
            DropdownMenuEntry(value: 'Item 1', label: 'Item 1'),
            DropdownMenuEntry(value: 'Item 2', label: 'Item 2'),
            DropdownMenuEntry(value: 'Item 3', label: 'Item 3'),
          ],
          onSelected: (value) {
            _value1 = value;
          },
        ),
        const SizedBox(height: 16),
        DropdownMenu(
          inputDecorationTheme: const InputDecorationTheme(filled: true),
          dropdownMenuEntries: const [
            DropdownMenuEntry(value: 'Item 1', label: 'Item 1'),
            DropdownMenuEntry(value: 'Item 2', label: 'Item 2'),
            DropdownMenuEntry(value: 'Item 3', label: 'Item 3'),
          ],
          onSelected: (value) {
            _value2 = value;
          },
        ),
      ],
    );
  }
}
