import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key, required this.title});

  final String title;

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
              child: ColoredBox(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: const Center(
                  child: Text('Expanded'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
