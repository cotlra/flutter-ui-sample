import 'package:flutter/material.dart';

class ChildPageInfo {
  final String pageName;
  final StatefulWidget page;

  String get pageRoute => '/${pageName.replaceAll(' ', '')}';

  ChildPageInfo({
    required this.pageName,
    required this.page,
  });
}
