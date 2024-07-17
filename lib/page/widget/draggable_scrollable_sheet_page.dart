import 'package:flutter/material.dart';

class DraggableScrollableSheetPage extends StatefulWidget {
  const DraggableScrollableSheetPage({super.key, required this.title});

  final String title;

  @override
  State<DraggableScrollableSheetPage> createState() =>
      _DraggableScrollableSheetPageState();
}

class _DraggableScrollableSheetPageState
    extends State<DraggableScrollableSheetPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.9,
              snap: true,
              snapSizes: const [
                0.1,
                0.5,
                0.9,
              ],
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: ColoredBox(
                    color: colorScheme.primaryContainer,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(32),
                          child: Text(
                            'DraggableScrollableSheet',
                          ),
                        ),
                        ...List.generate(
                          20,
                          (index) => ListTile(
                            title: Text('Item $index'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
