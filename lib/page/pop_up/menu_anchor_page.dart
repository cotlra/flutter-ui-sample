import 'package:flutter/material.dart';

class MenuAnchorPage extends StatefulWidget {
  const MenuAnchorPage({super.key, required this.title});

  final String title;

  @override
  State<MenuAnchorPage> createState() => _MenuAnchorPageState();
}

class _MenuAnchorPageState extends State<MenuAnchorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: MenuAnchor(
          builder: (context, controller, child) {
            return IconButton(
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              icon: const Icon(Icons.more_vert),
            );
          },
          menuChildren: [
            MenuItemButton(
              child: const Text('Menu 1'),
              onPressed: () {},
            ),
            MenuItemButton(
              child: const Text('Menu 2'),
              onPressed: () {},
            ),
            SubmenuButton(
              menuChildren: <Widget>[
                MenuItemButton(
                  onPressed: () {},
                  child: const Text('Menu 3.1'),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: const Text('Menu 3.2'),
                ),
                MenuItemButton(
                  onPressed: () {},
                  child: const Text('Menu 3.3'),
                ),
              ],
              child: const Text('Menu 3'),
            ),
          ],
        ),
      ),
    );
  }
}
