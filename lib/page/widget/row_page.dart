import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key, required this.title});

  final String title;

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  final _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Scrollbar(
          thumbVisibility: true,
          controller: _controller,
          child: SingleChildScrollView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(20, (index) {
                final colorScheme = Theme.of(context).colorScheme;
                final color = index % 2 == 0
                    ? colorScheme.primary
                    : colorScheme.primaryContainer;
                return Container(
                  width: 128,
                  height: 128,
                  color: color,
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
