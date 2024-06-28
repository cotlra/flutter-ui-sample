import 'package:flutter/material.dart';

class SliverFillRemainingPage extends StatefulWidget {
  const SliverFillRemainingPage({super.key, required this.title});

  final String title;

  @override
  State<SliverFillRemainingPage> createState() =>
      _SliverFillRemainingPageState();
}

class _SliverFillRemainingPageState extends State<SliverFillRemainingPage> {
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
            SliverFillRemaining(
              child: ColoredBox(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: const Center(
                  child: Text('SliverFillRemaining'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
