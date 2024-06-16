import 'package:flutter/material.dart';

class SliverListPage extends StatefulWidget {
  const SliverListPage({super.key, required this.title});

  final String title;

  @override
  State<SliverListPage> createState() => _SliverListPageState();
}

class _SliverListPageState extends State<SliverListPage> {
  final _list = List.generate(50, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text(widget.title),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_list[index]),
                  );
                },
                childCount: _list.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
