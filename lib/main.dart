import 'package:flutter/material.dart';
import 'package:ui_sample/page/other/navigator_page.dart';

import 'page/home_page.dart';
import 'page_list.dart';

void main() {
  // debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PageList pageList = PageList();
    final routeMap = pageList.getRootMap();
    routeMap['/'] = (context) => HomePage(
          pageList: pageList,
        );
    routeMap['/navigatorChild'] = (context) =>
        const NavigatorChildPage(title: 'NavigatorChild（pushNamed）');

    return MaterialApp(
      title: 'UI Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: routeMap,
    );
  }
}
