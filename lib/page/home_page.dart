import 'package:flutter/material.dart';

import '../page_info/page_category.dart';
import '../page_info/page_info.dart';
import '../page_info/page_list.dart';
import '../page_info/page_tag.dart';
import '../util/converters.dart';

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
                  return [_tags(controller)];
                } else {
                  final candidates = widget.pageList
                      .searchWords(controller.text)
                      .map(_pageListTile);

                  return [_tags(controller), ...candidates];
                }
              },
            ),
          ],
          bottom: TabBar(
            tabs: PageCategory.values
                .map(
                  (e) => Tab(
                    child:
                        Text(Converters.convertCamelCaseToPascalCase(e.name)),
                  ),
                )
                .toList(),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: PageCategory.values
                .map(
                  (category) => _pageListView(
                    widget.pageList.allList
                        .where((e) => e.category == category)
                        .toList(),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _tags(SearchController controller) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        spacing: 8,
        children: PageTag.values.where((e) => e != PageTag.error).map((e) {
          final pascalCaseName =
              Converters.convertCamelCaseToPascalCase(e.name);
          return ActionChip(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            label: Text(pascalCaseName),
            onPressed: () {
              controller.text =
                  '${controller.text} ${PageConsts.tagPrefix}$pascalCaseName';
            },
          );
        }).toList(),
      ),
    );
  }

  ListTile _pageListTile(PageInfo page) {
    final subKeywords = [...page.subKeywords]..sort((a, b) => a.compareTo(b));
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
