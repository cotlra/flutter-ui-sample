import 'package:flutter/material.dart';

import '../page_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.pageList});

  final PageList pageList;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('デモ'),
      ),
      body: SafeArea(
        child: ListView(
          children: _createListTiles(),
        ),
      ),
    );
  }

  List<Widget> _createListTiles() {
    List<Widget> allWidgets = [];
    final PageList lists = widget.pageList;

    for (var listEntry in lists.allMap.entries) {
      allWidgets.add(
        ExpansionTile(
          title: Text(listEntry.key),
          children: listEntry.value.map((e) => _createListTile(e)).toList(),
        ),
      );
    }
    return allWidgets;
  }

  Widget _createListTile(PageInfo page) {
    return ListTile(
      title: Text(page.pageName),
      onTap: () {
        Navigator.pushNamed(context, page.pageRoute);
      },
    );
  }
}
