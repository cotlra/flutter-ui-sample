import 'package:flutter/material.dart';

class SliverToBoxAdapterPage extends StatefulWidget {
  const SliverToBoxAdapterPage({super.key, required this.title});

  final String title;

  @override
  State<SliverToBoxAdapterPage> createState() => _SliverToBoxAdapterPageState();
}

class _SliverToBoxAdapterPageState extends State<SliverToBoxAdapterPage> {
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
            for (var item in _list)
              SliverToBoxAdapter(
                child: Container(
                  height: 50,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Text(item),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
