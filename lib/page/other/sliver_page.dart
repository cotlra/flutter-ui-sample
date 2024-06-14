import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({super.key, required this.title});

  final String title;

  @override
  State<SliverPage> createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  final list = List.generate(51, (index) => 'Item ${index + 1}');

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
          SliverToBoxAdapter(
            child: Container(
              padding: StyleConsts.padding16,
              color: Theme.of(context).colorScheme.primaryContainer,
              child: const Text('Sliver To Box Adapter'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Sliver List ${list[index]}'),
                );
              },
              childCount: list.length,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  child: Center(
                    child: Text('Sliver Grid\n${list[index]}'),
                  ),
                );
              },
              childCount: list.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
          ),
        ],
      ),
    ));
  }
}
