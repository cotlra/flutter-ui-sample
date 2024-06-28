import 'package:flutter/material.dart';

class SliverToBoxAdapterPage extends StatefulWidget {
  const SliverToBoxAdapterPage({super.key, required this.title});

  final String title;

  @override
  State<SliverToBoxAdapterPage> createState() => _SliverToBoxAdapterPageState();
}

class _SliverToBoxAdapterPageState extends State<SliverToBoxAdapterPage> {
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
            ...List.generate(50, (index) {
              return SliverToBoxAdapter(
                child: Container(
                  height: 50,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Text('Item ${index + 1}'),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
