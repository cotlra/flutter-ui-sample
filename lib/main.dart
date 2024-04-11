import 'package:flutter/material.dart';
import 'package:ui_sample/page/other/navigator.dart';

import 'data/page_info.dart';
import 'page/my_home_page.dart';

void main() {
  // debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final PageList pageList = PageList();
    final routeMap = pageList.getRootMap();
    routeMap['/'] = (context) => MyHomePage(
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
