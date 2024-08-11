import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key, required this.title});

  final String title;

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
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
                final colorScheme = Theme.of(context).colorScheme;
                final color = index.isEven
                    ? colorScheme.primary
                    : colorScheme.primaryContainer;
                return Container(
                  width: 128,
                  height: 128,
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
