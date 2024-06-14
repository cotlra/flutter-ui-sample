import 'package:flutter/material.dart';

class AbsorbPainterPage extends StatefulWidget {
  const AbsorbPainterPage({super.key, required this.title});

  final String title;

  @override
  State<AbsorbPainterPage> createState() => _AbsorbPainterPageState();
}

class _AbsorbPainterPageState extends State<AbsorbPainterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: AbsorbPointer(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('表示しました。'),
                  ),
                );
              },
              child: const Text('このボタンは押せません。'),
            ),
          ),
        ),
      ),
    );
  }
}
