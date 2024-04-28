import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({super.key, required this.title});
  final String title;

  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  var _selectedIndex = 0;
  final _contentList = const [
    Center(
      child: Text('ホーム画面'),
    ),
    Center(
      child: Text('検索画面'),
    ),
    Center(
      child: Text('設定画面'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text('ホーム')),
                NavigationRailDestination(
                    icon: Icon(Icons.search), label: Text('検索')),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text('設定')),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
            Expanded(child: _contentList[_selectedIndex]),
          ],
        ),
      ),
    );
  }
}
