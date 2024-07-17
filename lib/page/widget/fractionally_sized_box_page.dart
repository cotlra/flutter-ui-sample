import 'package:flutter/material.dart';

class FractionallySizedBoxPage extends StatefulWidget {
  const FractionallySizedBoxPage({super.key, required this.title});

  final String title;

  @override
  State<FractionallySizedBoxPage> createState() =>
      _FractionallySizedBoxPageState();
}

class _FractionallySizedBoxPageState extends State<FractionallySizedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Theme.of(context).primaryColor,
            alignment: Alignment.center,
            child: Text(
              'FractionallySizedBox',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
