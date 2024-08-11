import 'package:flutter/material.dart';

import 'child_page_info.dart';
import 'page_category.dart';
import 'page_tag.dart';

class PageInfo {
  PageInfo({
    required this.pageName,
    required this.page,
    this.category = PageCategory.widget,
    this.tags = const [],
    this.subKeywords = const [],
    this.childPages = const [],
  });
  final String pageName;
  final StatefulWidget page;
  final PageCategory category;
  final List<PageTag> tags;
  final List<String> subKeywords;
  final List<ChildPageInfo> childPages;

  String get pageRoute => '/${pageName.replaceAll(' ', '')}';

  bool isMatchTags(List<PageTag> tags) {
    var isMatch = true;

    for (final tag in tags) {
      isMatch = this.tags.contains(tag) && isMatch;
    }
    return isMatch;
  }

  bool isMatchWords(List<String> words) {
    var isMatch = true;

    final names = [pageName, ...subKeywords];
    for (final word in words) {
      isMatch = names
              .any((name) => name.toLowerCase().contains(word.toLowerCase())) &&
          isMatch;
    }
    return isMatch;
  }

  PageInfo copyWith({
    String? pageName,
    StatefulWidget? page,
    PageCategory? category,
    List<PageTag>? tags,
    List<String>? subKeywords,
    List<ChildPageInfo>? childPages,
  }) {
    return PageInfo(
      pageName: pageName ?? this.pageName,
      page: page ?? this.page,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      subKeywords: subKeywords ?? this.subKeywords,
      childPages: childPages ?? this.childPages,
    );
  }
}
