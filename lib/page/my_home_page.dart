import 'package:flutter/material.dart';

import '../data/page_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.pageList});

  final PageList pageList;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
