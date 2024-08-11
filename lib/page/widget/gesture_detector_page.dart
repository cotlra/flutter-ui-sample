import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({super.key, required this.title});

  final String title;

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  final _histories = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _histories.insert(0, 'Tap');
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    _histories.insert(0, 'DoubleTap');
                  });
                },
                onLongPress: () {
                  setState(() {
                    _histories.insert(0, 'LongPress');
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: const Text('Gesture'),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_histories[index]),
                );
              },
              itemCount: _histories.length,
            ),
          ),
        ],
      ),
    );
  }
}
