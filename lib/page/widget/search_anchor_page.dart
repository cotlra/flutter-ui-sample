import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class SearchAnchorPage extends StatefulWidget {
  const SearchAnchorPage({super.key, required this.title});

  final String title;

  @override
  State<SearchAnchorPage> createState() => _SearchAnchorPageState();
}

class _SearchAnchorPageState extends State<SearchAnchorPage> {
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
            return IconButton(
              onPressed: () {
                controller.openView();
              },
              icon: const Icon(Icons.search),
            );
          },
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return _list
                .where((e) => e.contains(controller.text))
                .map((e) => ListTile(title: Text(e)));
          },
        ),
      ],
    );
  }
}
