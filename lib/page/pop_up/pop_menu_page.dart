import 'package:flutter/material.dart';

import '../../const/style_const.dart';

class PopMenuPage extends StatefulWidget {
  const PopMenuPage({super.key, required this.title});

  final String title;

  @override
  State<PopMenuPage> createState() => _PopMenuPageState();
}

class _PopMenuPageState extends State<PopMenuPage> {
  String _menuName = 'Menu?';

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
                  value: 'Menu1',
                  child: Text('Menu1'),
                ),
                const PopupMenuItem(
                  value: 'Menu2',
                  child: Text('Menu2'),
                ),
                const PopupMenuItem(
                  value: 'Menu3',
                  child: Text('Menu3'),
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
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('ここに選択したメニューが表示されます。'),
            Text(
              _menuName,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            StyleConsts.sizedBoxH16,
          ],
        )),
      ),
    );
  }
}
