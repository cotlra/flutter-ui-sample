import 'package:flutter/material.dart';
import 'package:ui_sample/page/widget/about_dialog_page.dart';
import 'package:ui_sample/page/widget/alert_dialog_page.dart';
import 'package:ui_sample/page/widget/license_page_page.dart';
import 'package:ui_sample/page/widget/simple_dialog_page.dart';
import 'package:ui_sample/page/widget/sliver_grid_page.dart';
import 'package:ui_sample/page/widget/sliver_list_page.dart';
import 'package:ui_sample/page/widget/sliver_to_box_adapter_page.dart';

import 'page/free_page.dart';
import 'page/idea/blink_page.dart';
import 'page/idea/flip_card_page.dart';
import 'page/others/navigator_page.dart';
import 'page/theme/color_theme_page.dart';
import 'page/theme/text_theme_page.dart';
import 'page/widget/absorb_painter_page.dart';
import 'page/widget/animated_container_page.dart';
import 'page/widget/bottom_app_bar_page.dart';
import 'page/widget/bottom_navigation_bar_page.dart';
import 'page/widget/bottom_sheet_page.dart';
import 'page/widget/circular_progress_indicator_page.dart';
import 'page/widget/container_page.dart';
import 'page/widget/custom_paint_page.dart';
import 'page/widget/data_table_page.dart';
import 'page/widget/dialog_page.dart';
import 'page/widget/draggable_page.dart';
import 'page/widget/drawer_page.dart';
import 'page/widget/elevated_button_page.dart';
import 'page/widget/filled_button_page.dart';
import 'page/widget/floating_action_button_page.dart';
import 'page/widget/flutter_logo_page.dart';
import 'page/widget/future_builder_page.dart';
import 'page/widget/icon_button_page.dart';
import 'page/widget/linear_progress_indicatior_page.dart';
import 'page/widget/list_view_page.dart';
import 'page/widget/material_banner_page.dart';
import 'page/widget/menu_anchor_page.dart';
import 'page/widget/navigation_rail_page.dart';
import 'page/widget/outlined_button_page.dart';
import 'page/widget/page_view_page.dart';
import 'page/widget/placeholder_page.dart';
import 'page/widget/pop_menu_page.dart';
import 'page/widget/refresh_indicator_page.dart';
import 'page/widget/reorderable_list_view_page.dart';
import 'page/widget/scrollbar_page.dart';
import 'page/widget/segmented_button_page.dart';
import 'page/widget/single_child_scroll_view_page.dart';
import 'page/widget/sliver_fill_remaining_page.dart';
import 'page/widget/snack_bar_page.dart';
import 'page/widget/stepper_page.dart';
import 'page/widget/stream_builder_page.dart';
import 'page/widget/tab_bar_page.dart';
import 'page/widget/tab_page_selector.dart';
import 'page/widget/text_button_page.dart';
import 'page/widget/toggle_buttons_page.dart';
import 'page/widget/tooltip_page.dart';
import 'page/widget/transform_page.dart';

class PageInfo {
  final String pageName;
  final String pageRoute;
  final StatefulWidget page;
  final List<PageTag> tags;
  final List<String> subKeywords;

  PageInfo({
    required this.pageName,
    required this.pageRoute,
    required this.page,
    this.tags = const [],
    this.subKeywords = const [],
  });

  bool isMatch(List<PageTag> searchTags, List<String> searchWords) {
    bool isMatch = true;
    for (final tag in searchTags) {
      isMatch = tags.contains(tag) && isMatch;
    }

    var words = [pageName, ...subKeywords];
    for (final searchWord in searchWords) {
      isMatch = words.any((word) =>
              word.toLowerCase().contains(searchWord.toLowerCase())) &&
          isMatch;
    }
    return isMatch;
  }

  PageInfo copyWith({
    String? pageName,
    String? pageRoute,
    StatefulWidget? page,
    List<PageTag>? tags,
    List<String>? subKeywords,
  }) {
    return PageInfo(
      pageName: pageName ?? this.pageName,
      pageRoute: pageRoute ?? this.pageRoute,
      page: page ?? this.page,
      tags: tags ?? this.tags,
      subKeywords: subKeywords ?? this.subKeywords,
    );
  }
}

class PageList {
  final othersList = [
    PageInfo(
      pageName: 'Navigator',
      pageRoute: '/navigator',
      page: const NavigatorPage(title: 'Navigator'),
    ),
  ];

  final themeList = [
    PageInfo(
      pageName: 'Text',
      pageRoute: '/textTheme',
      page: const TextThemePage(title: 'Text Theme'),
      tags: [PageTag.theme],
    ),
    PageInfo(
      pageName: 'Color',
      pageRoute: '/colorTheme',
      page: const ColorThemePage(title: 'Color Theme'),
      tags: [PageTag.theme],
    ),
  ];

  final ideaList = [
    PageInfo(
      pageName: 'Blink',
      pageRoute: '/blink',
      page: const BlinkPage(title: 'Blink'),
    ),
    PageInfo(
      pageName: 'Flip Card',
      pageRoute: '/flipCard',
      page: const FlipCardPage(title: 'Flip Card'),
    ),
    PageInfo(
      pageName: 'Free Page',
      pageRoute: '/free',
      page: const FreePage(title: 'Free Page'),
    ),
  ];

  final widgetList = [
    PageInfo(
      pageName: 'TabBar',
      pageRoute: '/tabBar',
      page: const TabBarPage(title: 'TabBar'),
      tags: [PageTag.navigation],
      subKeywords: ['DefaultTabController', 'TabBarView'],
    ),
    PageInfo(
      pageName: 'BottomNavigationBar',
      pageRoute: '/bottomNavigationBar',
      page: const BottomNavigationBarPage(
        title: 'BottomNavigationBar',
      ),
      tags: [PageTag.navigation],
      subKeywords: ['BottomNavigationBarItem'],
    ),
    PageInfo(
      pageName: 'BottomAppBar',
      pageRoute: '/bottomAppBar',
      page: const BottomAppBarPage(title: 'BottomAppBar'),
      tags: [PageTag.navigation],
    ),
    PageInfo(
      pageName: 'NavigationRail',
      pageRoute: '/navigationRail',
      page: const NavigationRailPage(title: 'NavigationRail'),
      tags: [PageTag.navigation],
      subKeywords: ['NavigationRailDestination'],
    ),
    PageInfo(
      pageName: 'Drawer',
      pageRoute: '/drawer',
      page: const DrawerPage(title: 'Drawer'),
      tags: [PageTag.navigation],
      subKeywords: ['DrawerHeader'],
    ),
    PageInfo(
      pageName: 'SnackBar',
      pageRoute: '/snackBar',
      page: const SnackBarPage(title: 'SnackBar'),
      subKeywords: ['ScaffoldMessenger', 'SnackBarAction'],
    ),
    PageInfo(
      pageName: 'Dialog',
      pageRoute: '/dialog',
      page: const DialogPage(title: 'Dialog'),
    ),
    PageInfo(
      pageName: 'SimpleDialog',
      pageRoute: '/simpleDialog',
      page: const SimpleDialogPage(title: 'SimpleDialog'),
    ),
    PageInfo(
      pageName: 'LicensePage',
      pageRoute: '/licensePage',
      page: const LicensePagePage(title: 'LicensePage'),
    ),
    PageInfo(
      pageName: 'AlertDialog',
      pageRoute: '/alertDialog',
      page: const AlertDialogPage(title: 'AlertDialog'),
    ),
    PageInfo(
      pageName: 'AboutDialog',
      pageRoute: '/aboutDialog',
      page: const AboutDialogPage(title: 'AboutDialog'),
    ),
    // PageInfo(
    //   pageName: 'Picker',
    //   pageRoute: '/picker',
    //   page: const PickerPage(title: 'Picker'),
    // ),
    PageInfo(
      pageName: 'PopMenuButton',
      pageRoute: '/popMenubutton',
      page: const PopMenuButtonPage(title: 'PopMenuButton'),
      subKeywords: ['PopupMenuItem'],
    ),
    PageInfo(
      pageName: 'MenuAnchor',
      pageRoute: '/menuAnchor',
      page: const MenuAnchorPage(title: 'MenuAnchor'),
      subKeywords: ['MenuItemButton', 'SubmenuButton'],
    ),
    PageInfo(
      pageName: 'Tooltip',
      pageRoute: '/tooltip',
      page: const TooltipPage(title: 'Tooltip'),
    ),
    PageInfo(
      pageName: 'BottomSheet',
      pageRoute: '/bottomSheet',
      page: const BottomSheetPage(title: 'BottomSheet'),
    ),
    PageInfo(
      pageName: 'MaterialBanner',
      pageRoute: '/materialBanner',
      page: const MaterialBannerPage(title: 'MaterialBanner'),
      subKeywords: ['ScaffoldMessenger'],
    ),
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
      pageName: 'FlutterLogo',
      pageRoute: '/flutterLogo',
      page: const FlutterLogoPage(title: 'FlutterLogo'),
    ),
    PageInfo(
      pageName: 'ElevatedButton',
      pageRoute: '/elevatedButton',
      page: const ElevatedButtonPage(title: 'ElevatedButton'),
    ),
    PageInfo(
      pageName: 'FilledButton',
      pageRoute: '/filledButton',
      page: const FilledButtonPage(title: 'FilledButton'),
    ),
    PageInfo(
      pageName: 'TextButton',
      pageRoute: '/textButton',
      page: const TextButtonPage(title: 'TextButton'),
    ),
    PageInfo(
      pageName: 'OutlinedButton',
      pageRoute: '/outlinedButton',
      page: const OutlinedButtonPage(title: 'OutlinedButton'),
    ),
    PageInfo(
      pageName: 'FloatingActionButton',
      pageRoute: '/floatingActionButton',
      page: const FloatingActionButtonPage(title: 'FloatingActionButton'),
    ),
    PageInfo(
      pageName: 'IconButton',
      pageRoute: '/iconButton',
      page: const IconButtonPage(title: 'IconButton'),
    ),
    PageInfo(
      pageName: 'SegmentedButton',
      pageRoute: '/segmentedButton',
      page: const SegmentedButtonPage(title: 'SegmentedButton'),
      subKeywords: ['ButtonSegment'],
    ),
    PageInfo(
      pageName: 'ToggleButtons',
      pageRoute: '/toggleButtons',
      page: const ToggleButtonsPage(title: 'ToggleButtons'),
    ),
    // PageInfo(
    //   pageName: 'List Tile',
    //   pageRoute: '/listTile',
    //   page: const ListTilePage(title: 'List Tile'),
    // ),
    PageInfo(
      pageName: 'ListView',
      pageRoute: '/listView',
      page: const ListViewPage(title: 'ListView'),
    ),
    PageInfo(
      pageName: 'ReorderableListView',
      pageRoute: '/reorderableListViewPage',
      page: const ReorderableListViewPage(title: 'ReorderableListView'),
      subKeywords: ['ReorderableDragStartListener'],
    ),
    PageInfo(
      pageName: 'SingleChildScrollView',
      pageRoute: '/singleChildScrollView',
      page: const SingleChildScrollViewPage(title: 'SingleChildScrollView'),
    ),
    PageInfo(
      pageName: 'Scrollbar',
      pageRoute: '/scrollbar',
      page: const ScrollbarPage(title: 'Scrollbar'),
    ),
    PageInfo(
      pageName: 'PageView',
      pageRoute: '/pageView',
      page: const PageViewPage(title: 'PageView'),
      subKeywords: ['PageController'],
    ),
    PageInfo(
      pageName: 'TabPageSelector',
      pageRoute: '/tabPageSelector',
      page: const TabPageSelectorPage(title: 'TabPageSelector'),
      subKeywords: ['TabController'],
    ),
    PageInfo(
      pageName: 'LinearProgressIndicator',
      pageRoute: '/linearProgressIndicator',
      page: const LinearProgressIndicatorPage(title: 'LinearProgressIndicator'),
    ),
    PageInfo(
      pageName: 'CircularProgressIndicator',
      pageRoute: '/circularProgressIndicator',
      page: const CircularProgressIndicatorPage(
          title: 'CircularProgressIndicator'),
    ),
    PageInfo(
      pageName: 'StreamBuilder',
      pageRoute: '/streamBuilder',
      page: const StreamBuilderPage(title: 'StreamBuilder'),
    ),
    PageInfo(
      pageName: 'FutureBuilder',
      pageRoute: '/futureBuilder',
      page: const FutureBuilderPage(title: 'FutureBuilder'),
    ),
    PageInfo(
      pageName: 'RefreshIndicator',
      pageRoute: '/refreshIndicator',
      page: const RefreshIndicatorPage(title: 'RefreshIndicator'),
    ),
    PageInfo(
      pageName: 'AnimatedContainer',
      pageRoute: '/animatedContainer',
      page: const AnimatedContainerPage(title: 'AnimatedContainer'),
    ),
    PageInfo(
      pageName: 'DataTable',
      pageRoute: '/dataTable',
      page: const DataTablePage(title: 'DataTable'),
    ),
    PageInfo(
      pageName: 'Stepper',
      pageRoute: '/stepper',
      page: const StepperPage(title: 'Stepper'),
      subKeywords: ['Step'],
    ),
    // PageInfo(
    //   pageName: 'Input',
    //   pageRoute: '/input',
    //   page: const InputPage(title: 'Input'),
    // ),
    PageInfo(
      pageName: 'Draggable',
      pageRoute: '/draggable',
      page: const DraggablePage(title: 'Draggable'),
      subKeywords: ['DragTarget'],
    ),
    PageInfo(
      pageName: 'CustomPaint',
      pageRoute: '/customPaint',
      page: const CustomPaintPage(title: 'CustomPaint'),
      subKeywords: [
        'CustomPainter',
        'Paint',
        'Offset',
        'Size',
        'Canvas',
        'Rect',
        'Path',
        'TextPainter',
      ],
    ),
    PageInfo(
      pageName: 'Transform',
      pageRoute: '/transform',
      page: const TransformPage(title: 'Transform'),
      subKeywords: ['Matrix4'],
    ),
    PageInfo(
      pageName: 'AbsorbPainter',
      pageRoute: '/absorbPainter',
      page: const AbsorbPainterPage(title: 'AbsorbPainter'),
    ),
    PageInfo(
      pageName: 'SliverList',
      pageRoute: '/sliverList',
      page: const SliverListPage(title: 'SliverList'),
      subKeywords: [
        'SliverAppBar',
        'CustomScrollView',
        'SliverChildBuilderDelegate'
      ],
    ),
    PageInfo(
      pageName: 'SliverGrid',
      pageRoute: '/sliverGrid',
      page: const SliverGridPage(title: 'SliverGrid'),
      subKeywords: [
        'SliverAppBar',
        'CustomScrollView',
        'SliverChildBuilderDelegate',
        'SliverGridDelegateWithFixedCrossAxisCount',
      ],
    ),
    PageInfo(
      pageName: 'SliverToBoxAdapter',
      pageRoute: '/sliverToBoxAdapter',
      page: const SliverToBoxAdapterPage(title: 'SliverToBoxAdapter'),
      subKeywords: [
        'SliverAppBar',
        'CustomScrollView',
      ],
    ),
    PageInfo(
      pageName: 'SliverFillRemaining',
      pageRoute: '/sliverFillRemaining',
      page: const SliverFillRemainingPage(title: 'SliverFillRemaining'),
      subKeywords: [
        'SliverAppBar',
        'CustomScrollView',
      ],
    ),
  ];

  List<PageInfo> get allList =>
      [...widgetList, ...themeList, ...ideaList, ...othersList];

  PageList() {
    widgetList.sort((a, b) {
      return a.pageName.compareTo(b.pageName);
    });
    themeList.sort((a, b) {
      return a.pageName.compareTo(b.pageName);
    });
    ideaList.sort((a, b) {
      return a.pageName.compareTo(b.pageName);
    });
    othersList.sort((a, b) {
      return a.pageName.compareTo(b.pageName);
    });
  }

  Map<String, Widget Function(BuildContext)> getRootMap() {
    return Map.fromIterables(allList.map<String>((e) => e.pageRoute),
        allList.map<Widget Function(BuildContext)>((e) => (context) => e.page));
  }
}

enum PageTag {
  theme,
  navigation,
}
