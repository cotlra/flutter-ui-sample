import 'package:flutter/material.dart';

import 'page/home_page.dart';
import 'page_info/page_list.dart';

void main() {
  // debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final pageList = PageList();
    final routeMap = pageList.getRootMap();
    routeMap['/'] = (context) => HomePage(
      onLightModeChanged: (value) {
        setState(() {
          isDarkMode = value;
        });
      },
      isDarkMode: isDarkMode,
      pageList: pageList,
    );

    return MaterialApp(
      title: 'UI Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: isDarkMode ? Brightness.dark : Brightness.light,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: routeMap,
    );
  }
}
