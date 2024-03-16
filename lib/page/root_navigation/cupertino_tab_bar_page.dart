import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabBarPage extends StatefulWidget {
  const CupertinoTabBarPage({super.key, required this.title});
  final String title;

  @override
  State<CupertinoTabBarPage> createState() => _CupertinoTabBarPageState();
}

class _CupertinoTabBarPageState extends State<CupertinoTabBarPage> {
  var _selectedIndex = 0;
  final _contentList = const [
    Center(child: Text('ホーム画面'),),
    Center(child: Text('検索画面'),),
    Center(child: Text('設定'),),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // body: _contentList[_selectedIndex],
        tabBuilder: (BuildContext context, int index) {
          return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
              middle: Text('Page 1 of tab $index'),
          ),
          child: _contentList[_selectedIndex],
          );
        },
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: '検索'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
          setState((){
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
