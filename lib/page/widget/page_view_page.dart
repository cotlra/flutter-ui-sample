import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key, required this.title});

  final String title;

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final PageController _controller = PageController(
    initialPage: 1,
    viewportFraction: 0.9,
  );

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        controller: _controller,
        children: [
          ColoredBox(
            color: colorScheme.primaryContainer,
            child: const Center(
              child: Text('Page 1'),
            ),
          ),
          ColoredBox(
            color: colorScheme.tertiaryContainer,
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('You can scroll horizontally.'),
                  SizedBox(height: 16),
                  Text('Page 2'),
                ],
              ),
            ),
          ),
          ColoredBox(
            color: colorScheme.secondaryContainer,
            child: const Center(
              child: Text('Page 3'),
            ),
          ),
        ],
      ),
    );
  }
}
