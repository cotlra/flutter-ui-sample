import 'package:flutter/material.dart';

class TabPageSelectorPage extends StatefulWidget {
  const TabPageSelectorPage({super.key, required this.title});

  final String title;

  @override
  State<TabPageSelectorPage> createState() => _TabPageSelectorPageState();
}

class _TabPageSelectorPageState extends State<TabPageSelectorPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final PageController _pageController = PageController(initialPage: 1);

  @override
  void initState() {
    _tabController = TabController(initialIndex: 1, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
              onPageChanged: (newValue) {
                setState(() {
                  _tabController.index = newValue;
                });
              },
              controller: _pageController,
              children: const [
                Center(
                  child: Text('Page 1'),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('You can scroll horizontally.'),
                      SizedBox(height: 16),
                      Text('Page 2'),
                    ],
                  ),
                ),
                Center(
                  child: Text('Page 3'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TabPageSelector(
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
