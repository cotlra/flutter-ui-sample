import 'package:flutter/material.dart';

class SliverGridPage extends StatefulWidget {
  const SliverGridPage({super.key, required this.title});

  final String title;

  @override
  State<SliverGridPage> createState() => _SliverGridPageState();
}

class _SliverGridPageState extends State<SliverGridPage> {
  final _list = List.generate(50, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(widget.title),
              floating: true,
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Card(
                    child: Center(
                      child: Text(_list[index]),
                    ),
                  );
                },
                childCount: _list.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
