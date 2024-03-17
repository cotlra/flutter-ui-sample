import 'package:flutter/material.dart';
import 'package:ui_sample/page/async/future_builder_page.dart';
import 'package:ui_sample/page/async/indicator_page.dart';
import 'package:ui_sample/page/button/floating_action_button_page.dart';
import 'package:ui_sample/page/button/icon_button_page.dart';
import 'package:ui_sample/page/button/segmented_button_page.dart';
import 'package:ui_sample/page/button/toggle_buttons_page.dart';
import 'package:ui_sample/page/draggable_page.dart';
import 'package:ui_sample/page/input_page.dart';
import 'package:ui_sample/page/list/list_view_page.dart';
import 'package:ui_sample/page/pop_up/menu_anchor_page.dart';
import 'package:ui_sample/page/async/refresh_indicator_page.dart';
import 'package:ui_sample/page/pop_up/tooltip_page.dart';
import 'package:ui_sample/page/root_navigation/bottom_app_bar_page.dart';
import 'package:ui_sample/page/root_navigation/cupertino_tab_bar_page.dart';
import 'package:ui_sample/page/stepper_page.dart';
import 'package:ui_sample/page/async/stream_builder_page.dart';

import 'data/page_info.dart';
import 'page/blink_page.dart';
import 'page/list/reorderable_list_view_page.dart';
import 'page/root_navigation/bottom_navigation_bar_page.dart';
import 'page/button/button_page.dart';
import 'page/data_table_page.dart';
import 'page/pop_up/dialog_page.dart';
import 'page/root_navigation/drawer_page.dart';
import 'page/free_page.dart';
import 'page/list/list_tile_page.dart';
import 'page/my_home_page.dart';
import 'page/root_navigation/navigation_rail_page.dart';
import 'page/pop_up/picker_page.dart';
import 'page/pop_up/pop_menu_page.dart';
import 'page/pop_up/snack_bar_page.dart';
import 'page/root_navigation/tab_bar_page.dart';

void main() {
  // debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final pageList = [
      PageInfo(pageName: 'Tab Bar', pageRoute: '/tabBar', page: const TabBarPage(title:'Tab Bar'),category: PageCategory.rootNavigation),
      PageInfo(pageName: 'Bottom Navigation', pageRoute: '/bottomNavigation', page: const BottomNavigationBarPage(title: 'Bottom Navigation',),category: PageCategory.rootNavigation),
      PageInfo(pageName: 'Cupertino Tab Bar', pageRoute: '/cupertinoTabBar', page: const CupertinoTabBarPage(title: 'Cupertino Tab Bar',),category: PageCategory.rootNavigation),
      PageInfo(pageName: 'Bottom App Bar', pageRoute: '/bottomAppBar', page: const BottomAppBarPage(title: 'Bottom App Bar'),category: PageCategory.rootNavigation),
      PageInfo(pageName: 'Navigation Rail', pageRoute: '/navigationRail', page: const NavigationRailPage(title: 'Navigation Rail'),category: PageCategory.rootNavigation),
      PageInfo(pageName: 'Drawer', pageRoute: '/drawer', page: const DrawerPage(title: 'Drawer'),category: PageCategory.rootNavigation),
      PageInfo(pageName: 'Snack Bar', pageRoute: '/snackBar', page: const SnackBarPage(title: 'Snack Bar'),category: PageCategory.popUp),
      PageInfo(pageName: 'Dialog', pageRoute: '/dialog', page: const DialogPage(title: 'Dialog'),category: PageCategory.popUp),
      PageInfo(pageName: 'Picker', pageRoute: '/picker', page: const PickerPage(title: 'Picker'),category: PageCategory.popUp),
      PageInfo(pageName: 'Pop Menu', pageRoute: '/popMenu', page: const PopMenuPage(title: 'Pop Menu'),category: PageCategory.popUp),
      PageInfo(pageName: 'Menu Anchor', pageRoute: '/menuAnchor', page: const MenuAnchorPage(title: 'Menu Anchor'),category: PageCategory.popUp),
      PageInfo(pageName: 'Tooltip', pageRoute: '/tooltip', page: const TooltipPage(title: 'Tooltip'),category: PageCategory.popUp),
      PageInfo(pageName: 'Button', pageRoute: '/button', page: const ButtonPage(title: 'Button'),category: PageCategory.button),
      PageInfo(pageName: 'Floating Action Button', pageRoute: '/floatingActionButton', page: const FloatingActionButtonPage(title: 'Floating Action Button'),category: PageCategory.button),
      PageInfo(pageName: 'Icon Button', pageRoute: '/iconButton', page: const IconButtonPage(title: 'Icon Button'),category: PageCategory.button),
      PageInfo(pageName: 'Segmented Button', pageRoute: '/segmentedButton', page: const SegmentedButtonPage(title: 'Segmented Button'),category: PageCategory.button),
      PageInfo(pageName: 'Toggle Buttons', pageRoute: '/toggleButtons', page: const ToggleButtonsPage(title: 'Toggle Buttons'),category: PageCategory.button),
      PageInfo(pageName: 'List Tile', pageRoute: '/listTile', page: const ListTilePage(title: 'List Tile'),category: PageCategory.list),
      PageInfo(pageName: 'List Vie', pageRoute: '/listView', page: const ListViewPage(title: 'List View'),category: PageCategory.list),
      PageInfo(pageName: 'Reorderable List View', pageRoute: '/reorderableListViewPage', page: const ReorderableListViewPage(title: 'Reorderable List View'),category: PageCategory.list),
      PageInfo(pageName: 'Indicator', pageRoute: '/indicator', page: const IndicatorPage(title: 'Indicator'),category: PageCategory.async),
      PageInfo(pageName: 'Stream Builder', pageRoute: '/streamBuilder', page: const StreamBuilderPage(title: 'Stream Builder'),category: PageCategory.async),
      PageInfo(pageName: 'Future Builder', pageRoute: '/futureBuilder', page: const FutureBuilderPage(title: 'Refresh Indicator'),category: PageCategory.async),
      PageInfo(pageName: 'Refresh Indicator', pageRoute: '/refreshIndicator', page: const RefreshIndicatorPage(title: 'Refresh Indicator'),category: PageCategory.async),
      PageInfo(pageName: '点滅', pageRoute: '/blink', page: const BlinkPage(title: '点滅')),
      PageInfo(pageName: 'Data Table', pageRoute: '/dataTable', page: const DataTablePage(title: 'Data Table')),
      PageInfo(pageName: 'Stepper', pageRoute: '/stepper', page: const StepperPage(title: 'Stepper')),
      PageInfo(pageName: 'Input', pageRoute: '/input', page: const InputPage(title: 'Input')),
      PageInfo(pageName: 'Draggable', pageRoute: '/draggable', page: const DraggablePage(title: 'Draggable')),
      PageInfo(pageName: 'お試しページ', pageRoute: '/free', page: const FreePage(title: 'お試しページ')),
    ];
    final routeMap = Map.fromIterables(pageList.map<String>((e) => e.pageRoute), pageList.map<Widget Function(BuildContext)>((e) => (context) => e.page));
    routeMap['/'] = (context) => MyHomePage(pageList: pageList,);

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
