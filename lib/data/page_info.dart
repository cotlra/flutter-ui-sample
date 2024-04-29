import 'package:flutter/material.dart';
import 'package:ui_sample/page/free_page.dart';
import 'package:ui_sample/page/object/container_page.dart';
import 'package:ui_sample/page/other/sliver_page.dart';
import 'package:ui_sample/page/other/transform_page.dart';
import 'package:ui_sample/page/pop_up/bottom_sheet.dart';
import 'package:ui_sample/page/scroll/scrollbar_page.dart';
import 'package:ui_sample/page/theme/color_theme_page.dart';
import 'package:ui_sample/page/theme/text_theme_page.dart';

import '../page/animation/blink_page.dart';
import '../page/animation/flip_card_page.dart';
import '../page/async/future_builder_page.dart';
import '../page/async/indicator_page.dart';
import '../page/async/refresh_indicator_page.dart';
import '../page/async/stream_builder_page.dart';
import '../page/button/button_page.dart';
import '../page/button/floating_action_button_page.dart';
import '../page/button/icon_button_page.dart';
import '../page/button/segmented_button_page.dart';
import '../page/button/toggle_buttons_page.dart';
import '../page/list/list_tile_page.dart';
import '../page/list/list_view_builder_page.dart';
import '../page/list/list_view_page.dart';
import '../page/list/reorderable_list_view_page.dart';
import '../page/object/flutter_logo_page.dart';
import '../page/object/placeholder_page.dart';
import '../page/other/canvas_page.dart';
import '../page/other/data_table_page.dart';
import '../page/other/draggable_page.dart';
import '../page/other/input_page.dart';
import '../page/other/navigator_page.dart';
import '../page/other/stepper_page.dart';
import '../page/pop_up/dialog_page.dart';
import '../page/pop_up/menu_anchor_page.dart';
import '../page/pop_up/picker_page.dart';
import '../page/pop_up/pop_menu_page.dart';
import '../page/pop_up/snack_bar_page.dart';
import '../page/pop_up/tooltip_page.dart';
import '../page/root_navigation/bottom_app_bar_page.dart';
import '../page/root_navigation/bottom_navigation_bar_page.dart';
import '../page/root_navigation/drawer_page.dart';
import '../page/root_navigation/navigation_rail_page.dart';
import '../page/root_navigation/tab_bar_page.dart';
import '../page/scroll/page_view_page.dart';
import '../page/scroll/single_child_scroll_view_page.dart';
import '../page/scroll/tab_page_selector.dart';

class PageInfo {
  final String pageName;
  final String pageRoute;
  final StatefulWidget page;

  PageInfo({
    required this.pageName,
    required this.pageRoute,
    required this.page,
  });
}

class PageList {
  final rootNavigationList = [
    PageInfo(
      pageName: 'Tab Bar',
      pageRoute: '/tabBar',
      page: const TabBarPage(title: 'Tab Bar'),
    ),
    PageInfo(
      pageName: 'Bottom Navigation',
      pageRoute: '/bottomNavigation',
      page: const BottomNavigationBarPage(
        title: 'Bottom Navigation',
      ),
    ),
    // PageInfo(
    //   pageName: 'Cupertino Tab Bar',
    //   pageRoute: '/cupertinoTabBar',
    //   page: const CupertinoTabBarPage(
    //     title: 'Cupertino Tab Bar',
    //   ),
    // ),
    PageInfo(
      pageName: 'Bottom App Bar',
      pageRoute: '/bottomAppBar',
      page: const BottomAppBarPage(title: 'Bottom App Bar'),
    ),
    PageInfo(
      pageName: 'Navigation Rail',
      pageRoute: '/navigationRail',
      page: const NavigationRailPage(title: 'Navigation Rail'),
    ),
    PageInfo(
      pageName: 'Drawer',
      pageRoute: '/drawer',
      page: const DrawerPage(title: 'Drawer'),
    ),
  ];
  final popUpList = [
    PageInfo(
      pageName: 'Snack Bar',
      pageRoute: '/snackBar',
      page: const SnackBarPage(title: 'Snack Bar'),
    ),
    PageInfo(
      pageName: 'Dialog',
      pageRoute: '/dialog',
      page: const DialogPage(title: 'Dialog'),
    ),
    PageInfo(
      pageName: 'Picker',
      pageRoute: '/picker',
      page: const PickerPage(title: 'Picker'),
    ),
    PageInfo(
      pageName: 'Pop Menu',
      pageRoute: '/popMenu',
      page: const PopMenuPage(title: 'Pop Menu'),
    ),
    PageInfo(
      pageName: 'Menu Anchor',
      pageRoute: '/menuAnchor',
      page: const MenuAnchorPage(title: 'Menu Anchor'),
    ),
    PageInfo(
      pageName: 'Tooltip',
      pageRoute: '/tooltip',
      page: const TooltipPage(title: 'Tooltip'),
    ),
    PageInfo(
      pageName: 'Bottom Sheet',
      pageRoute: '/bottomSheet',
      page: const BottomSheetPage(title: 'Bottom Sheet'),
    ),
  ];
  final objectList = [
    PageInfo(
      pageName: 'Container',
      pageRoute: '/container',
      page: const ContainerPage(title: 'Container'),
    ),
    PageInfo(
      pageName: 'Placeholder',
      pageRoute: '/placeholder',
      page: const PlaceholderPage(title: 'Placeholder'),
    ),
    PageInfo(
      pageName: 'Flutter Logo',
      pageRoute: '/flutterLogo',
      page: const FlutterLogoPage(title: 'Flutter Logo'),
    ),
  ];
  final buttonList = [
    PageInfo(
      pageName: 'Button',
      pageRoute: '/button',
      page: const ButtonPage(title: 'Button'),
    ),
    PageInfo(
      pageName: 'Floating Action Button',
      pageRoute: '/floatingActionButton',
      page: const FloatingActionButtonPage(title: 'Floating Action Button'),
    ),
    PageInfo(
      pageName: 'Icon Button',
      pageRoute: '/iconButton',
      page: const IconButtonPage(title: 'Icon Button'),
    ),
    PageInfo(
      pageName: 'Segmented Button',
      pageRoute: '/segmentedButton',
      page: const SegmentedButtonPage(title: 'Segmented Button'),
    ),
    PageInfo(
      pageName: 'Toggle Buttons',
      pageRoute: '/toggleButtons',
      page: const ToggleButtonsPage(title: 'Toggle Buttons'),
    ),
  ];
  final listList = [
    PageInfo(
      pageName: 'List Tile',
      pageRoute: '/listTile',
      page: const ListTilePage(title: 'List Tile'),
    ),
    PageInfo(
      pageName: 'List View',
      pageRoute: '/listView',
      page: const ListViewPage(title: 'List View'),
    ),
    PageInfo(
      pageName: 'List View（Builder）',
      pageRoute: '/listViewBuilder',
      page: const ListViewBuilderPage(title: 'List View（Builder）'),
    ),
    PageInfo(
      pageName: 'Reorderable List View',
      pageRoute: '/reorderableListViewPage',
      page: const ReorderableListViewPage(title: 'Reorderable List View'),
    ),
  ];
  final scrollList = [
    PageInfo(
      pageName: 'Single Child Scroll View',
      pageRoute: '/singleChildScrollView',
      page: const SingleChildScrollViewPage(title: 'Single Child Scroll View'),
    ),
    PageInfo(
      pageName: 'Scrollbar',
      pageRoute: '/scrollbar',
      page: const ScrollbarPage(title: 'Scrollbar'),
    ),
    PageInfo(
      pageName: 'Page View',
      pageRoute: '/pageView',
      page: const PageViewPage(title: 'Page View'),
    ),
    PageInfo(
      pageName: 'Tab Page Selector',
      pageRoute: '/tabPageSelector',
      page: const TabPageSelectorPage(title: 'Tab Page Selector'),
    ),
  ];
  final asyncList = [
    PageInfo(
      pageName: 'Indicator',
      pageRoute: '/indicator',
      page: const IndicatorPage(title: 'Indicator'),
    ),
    PageInfo(
      pageName: 'Stream Builder',
      pageRoute: '/streamBuilder',
      page: const StreamBuilderPage(title: 'Stream Builder'),
    ),
    PageInfo(
      pageName: 'Future Builder',
      pageRoute: '/futureBuilder',
      page: const FutureBuilderPage(title: 'Refresh Indicator'),
    ),
    PageInfo(
      pageName: 'Refresh Indicator',
      pageRoute: '/refreshIndicator',
      page: const RefreshIndicatorPage(title: 'Refresh Indicator'),
    ),
  ];
  final animationList = [
    PageInfo(
      pageName: '点滅',
      pageRoute: '/blink',
      page: const BlinkPage(title: '点滅'),
    ),
    PageInfo(
      pageName: 'カードの回転',
      pageRoute: '/flipCard',
      page: const FlipCardPage(title: 'カードの回転'),
    ),
  ];
  final themeList = [
    PageInfo(
      pageName: 'Text Theme',
      pageRoute: '/textTheme',
      page: const TextThemePage(title: 'Text Theme'),
    ),
    PageInfo(
      pageName: 'Color Theme',
      pageRoute: '/colorTheme',
      page: const ColorThemePage(title: 'Color Theme'),
    ),
  ];
  final otherList = [
    PageInfo(
      pageName: 'Data Table',
      pageRoute: '/dataTable',
      page: const DataTablePage(title: 'Data Table'),
    ),
    PageInfo(
      pageName: 'Stepper',
      pageRoute: '/stepper',
      page: const StepperPage(title: 'Stepper'),
    ),
    PageInfo(
      pageName: 'Input',
      pageRoute: '/input',
      page: const InputPage(title: 'Input'),
    ),
    PageInfo(
      pageName: 'Draggable',
      pageRoute: '/draggable',
      page: const DraggablePage(title: 'Draggable'),
    ),
    PageInfo(
      pageName: 'Navigator（画面遷移）',
      pageRoute: '/navigator',
      page: const NavigatorPage(title: 'Navigator（画面遷移）'),
    ),
    PageInfo(
      pageName: 'Sliver',
      pageRoute: '/sliver',
      page: const SliverPage(title: 'Sliver'),
    ),
    PageInfo(
      pageName: 'Canvas',
      pageRoute: '/canvas',
      page: const CanvasPage(title: 'Canvas'),
    ),
    PageInfo(
      pageName: 'Transform',
      pageRoute: '/transform',
      page: const TransformPage(title: 'Transform'),
    ),
    PageInfo(
      pageName: 'お試しページ',
      pageRoute: '/free',
      page: const FreePage(title: 'お試しページ'),
    ),
  ];

  late Map<String, List<PageInfo>> allMap;

  PageList() {
    allMap = {
      'ルートナビゲーション': rootNavigationList,
      'ポップアップ': popUpList,
      '物体': objectList,
      'ボタン': buttonList,
      'リスト': listList,
      'スクロール': scrollList,
      '同期': asyncList,
      'アニメーション': animationList,
      'テーマ': themeList,
      'その他': otherList,
    };
  }

  Map<String, Widget Function(BuildContext)> getRootMap() {
    Map<String, Widget Function(BuildContext)> map = {};
    for (var element in allMap.values) {
      map.addAll(Map.fromIterables(
          element.map<String>((e) => e.pageRoute),
          element
              .map<Widget Function(BuildContext)>((e) => (context) => e.page)));
    }
    return map;
  }
}
