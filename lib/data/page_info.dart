import 'package:flutter/material.dart';

class PageInfo {
  final String pageName;
  final String pageRoute;
  final StatefulWidget page;
  final PageCategory category;

  PageInfo(
      {required this.pageName,
      required this.pageRoute,
      required this.page,
      this.category = PageCategory.other});
}

enum PageCategory {
  rootNavigation,
  async,
  popUp,
  button,
  list,
  animation,
  other
}
