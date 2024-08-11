import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({super.key, required this.title});

  final String title;

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  final _list = [
    'apple',
    'banana',
    'grape',
    'pineapple',
    'strawberry',
    'cherry',
    'lemon',
    'orange',
    'muscat',
    'kiwi',
    'pear',
  ];

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              controller: controller,
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 16),
              ),
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              leading: const Icon(Icons.search),
            );
          },
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return _list.where((e) => e.contains(controller.text)).map(
                  (e) => ListTile(
                    title: Text(e),
                    onTap: () {
                      setState(() {
                        controller.closeView(e);
                      });
                    },
                  ),
                );
          },
        ),
      ],
    );
  }
}
