import 'package:flutter/material.dart';

class PopMenuButtonPage extends StatefulWidget {
  const PopMenuButtonPage({super.key, required this.title});

  final String title;

  @override
  State<PopMenuButtonPage> createState() => _PopMenuButtonPageState();
}

class _PopMenuButtonPageState extends State<PopMenuButtonPage> {
  String _menuName = 'Menu ?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Menu 1',
                  child: Text('Menu 1'),
                ),
                const PopupMenuItem(
                  value: 'Menu 2',
                  child: Text('Menu 2'),
                ),
                const PopupMenuDivider(),
                const PopupMenuItem(
                  value: 'Menu 3',
                  child: Text('Menu 3'),
                ),
              ];
            },
            onSelected: (selectedValue) {
              setState(() {
                _menuName = selectedValue;
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'You selected $_menuName.',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
