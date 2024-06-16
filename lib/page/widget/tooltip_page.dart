import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  const TooltipPage({super.key, required this.title});

  final String title;

  @override
  State<TooltipPage> createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.info_outline),
                tooltip: 'Tooltip（Property）',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              Tooltip(
                message: 'Tooltip（Widget）',
                child: Container(
                  width: 80,
                  height: 80,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
