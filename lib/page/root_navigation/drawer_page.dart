import 'package:flutter/material.dart';

import '../../const/style_const.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key, required this.title});
  final String title;

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  String _menuName = 'メニュー?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: _createDrawer(),
      endDrawer: _createDrawer(),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('ここに選択したメニューが表示されます。'),
          Text(
            _menuName,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          StyleConsts.sizedBoxH16,
          ElevatedButton(
            child: const Text('前のページへ戻る'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }

  Drawer _createDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Text('タイトル',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.apply(color: Theme.of(context).colorScheme.onPrimary)),
          ),
          ...List.generate(5, (index) => index + 1).map((e) => _createMenu(e)),
          const Divider(),
          ...List.generate(7, (index) => index + 6).map((e) => _createMenu(e)),
        ],
      ),
    );
  }

  ListTile _createMenu(int no) {
    return ListTile(
      title: Text('メニュー$no'),
      onTap: () {
        setState(() {
          _menuName = 'メニュー$no';
        });
        Navigator.pop(context);
      },
    );
  }
}
