import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class TabPageSelectorPage extends StatefulWidget {
  const TabPageSelectorPage({super.key, required this.title});

  final String title;

  @override
  State<TabPageSelectorPage> createState() => _TabPageSelectorPageState();
}

class _TabPageSelectorPageState extends State<TabPageSelectorPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController = PageController(initialPage: 1);

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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView(
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
                        Text('左右にスクロールできます。'),
                        StyleConsts.sizedBoxH16,
                        Text('Page 2'),
                      ],
                    ),
                  ),
                  Center(
                    child: Text('Page 3'),
                  ),
                ],
              ),
            ),
            TabPageSelector(
              controller: _tabController,
            ),
            StyleConsts.sizedBoxH32,
          ],
        ),
      ),
    );
  }
}
