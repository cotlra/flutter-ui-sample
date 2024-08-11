import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  const SingleChildScrollViewPage({super.key, required this.title});

  final String title;

  @override
  State<SingleChildScrollViewPage> createState() =>
      _SingleChildScrollViewPageState();
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(20, (index) {
                final colorSheme = Theme.of(context).colorScheme;
                final color = index.isEven
                    ? colorSheme.primary
                    : colorSheme.primaryContainer;
                return Container(
                  width: 208,
                  height: 208,
                  color: color,
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
