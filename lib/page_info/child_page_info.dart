import 'package:flutter/material.dart';

class ChildPageInfo {
  ChildPageInfo({
    required this.pageName,
    required this.page,
  });
  final String pageName;
  final StatefulWidget page;

  String get pageRoute => '/${pageName.replaceAll(' ', '')}';
}
