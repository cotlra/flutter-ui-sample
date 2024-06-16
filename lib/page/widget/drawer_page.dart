import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key, required this.title});
  final String title;

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  String _menuName = 'Menu ?';

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
            Text(
              'You selected $_menuName.',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Drawer _createDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Text('Title',
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
      title: Text('Menu $no'),
      onTap: () {
        setState(() {
          _menuName = 'Menu $no';
        });
        Navigator.pop(context);
      },
    );
  }
}
