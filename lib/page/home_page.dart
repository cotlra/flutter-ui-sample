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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('UI Collection'),
          actions: [
            SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return IconButton(
                  onPressed: () {
                    controller.openView();
                  },
                  icon: const Icon(Icons.search),
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                if (controller.text.isEmpty) {
                  return [const SizedBox.shrink()];
                } else {
                  final searchWords = controller.text.split(' ');
                  final tags = <PageTag>[]; // TODO: Categoryの整備
                  final keywords = searchWords
                      .where((element) => !element.startsWith('tags:'))
                      .toList();

                  return widget.pageList.allList
                      .where((element) => element.isMatch(tags, keywords))
                      .map((e) => _pageListTile(e));
                }
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Widget'),
              ),
              Tab(
                child: Text('Theme'),
              ),
              Tab(
                child: Text('Idea'),
              ),
              Tab(
                child: Text('Others'),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              _pageListView(widget.pageList.widgetList),
              _pageListView(widget.pageList.themeList),
              _pageListView(widget.pageList.ideaList),
              _pageListView(widget.pageList.othersList),
              // _createPageListView(widget.pageList.othersList),
            ],
          ),
        ),
        // body: SafeArea(
        //   child: ListView(
        //     children: _createListTiles(),
        //   ),
        // ),
      ),
    );
  }

  ListTile _pageListTile(PageInfo page) {
    final subKeywords = [...page.subKeywords];
    subKeywords.sort((a, b) => a.compareTo(b));
    return ListTile(
      title: Text(page.pageName),
      subtitle: page.subKeywords.isEmpty
          ? null
          : Tooltip(
              message: subKeywords.join(', '),
              child: Text(
                subKeywords.join(', '),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
      onTap: () {
        Navigator.pushNamed(context, page.pageRoute);
      },
    );
  }

  ListView _pageListView(List<PageInfo> pages) {
    return ListView.builder(
      itemCount: pages.length,
      itemBuilder: (BuildContext context, int index) {
        return _pageListTile(pages[index]);
      },
    );
  }
}
