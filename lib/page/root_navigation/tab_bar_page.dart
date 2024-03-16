import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key, required this.title});
  final String title;

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.home),
              ),
              Tab(
                child: Icon(Icons.search),
              ),
              Tab(
                child: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('ホーム画面'),),
            Center(child: Text('検索画面'),),
            Center(child: Text('設定画面'),),
          ],
        ),
      ),
    );
  }
}
