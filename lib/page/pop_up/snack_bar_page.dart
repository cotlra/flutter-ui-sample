import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key, required this.title});
  final String title;

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('Snack Barを表示する'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('表示しました'),
                  action: SnackBarAction(
                    label: '閉じる',
                    onPressed: () {},
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
