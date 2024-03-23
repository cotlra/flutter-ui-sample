import 'package:flutter/material.dart';

import '../data/page_info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.pageList});

  final List<PageInfo> pageList;

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
      body: ListView(
        children: _createListTiles(),
      ),
    );
  }

  List<Widget> _createListTiles() {
    List<Widget> allWidgets = [];
    List<Widget> rootNavigationWidgets = [];
    List<Widget> buttonWidgets = [];
    List<Widget> popUpWidgets = [];
    List<Widget> listWidgets = [];
    List<Widget> asyncWidgets = [];
    List<Widget> animationWidgets = [];

    for (var element in widget.pageList) {
      var listTile = _createListTile(element);
      if (element.category == PageCategory.rootNavigation) {
        rootNavigationWidgets.add(listTile);
      } else if (element.category == PageCategory.popUp) {
        popUpWidgets.add(listTile);
      } else if (element.category == PageCategory.button) {
        buttonWidgets.add(listTile);
      } else if (element.category == PageCategory.list) {
        listWidgets.add(listTile);
      } else if (element.category == PageCategory.async) {
        asyncWidgets.add(listTile);
      } else if (element.category == PageCategory.animation) {
        animationWidgets.add(listTile);
      } else {
        allWidgets.add(listTile);
      }
    }
    allWidgets.insert(
        0,
        ExpansionTile(
          title: const Text('アニメーション'),
          children: animationWidgets,
        ));
    allWidgets.insert(
        0,
        ExpansionTile(
          title: const Text('非同期'),
          children: asyncWidgets,
        ));
    allWidgets.insert(
        0,
        ExpansionTile(
          title: const Text('ポップアップ'),
          children: popUpWidgets,
        ));
    allWidgets.insert(
        0,
        ExpansionTile(
          title: const Text('リスト'),
          children: listWidgets,
        ));
    allWidgets.insert(
        0,
        ExpansionTile(
          title: const Text('ボタン'),
          children: buttonWidgets,
        ));
    allWidgets.insert(
        0,
        ExpansionTile(
          title: const Text('ルートナビゲーション'),
          children: rootNavigationWidgets,
        ));
    return allWidgets;
  }

  Widget _createListTile(PageInfo page) {
    return Column(
      children: [
        ListTile(
          title: Text(page.pageName),
          onTap: () {
            Navigator.pushNamed(context, page.pageRoute);
          },
        ),
      ],
    );
  }
}
