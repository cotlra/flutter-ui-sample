import 'package:flutter/material.dart';

import '../page/free_page.dart';
import '../page/library/fade_scale_transition_page.dart';
import '../page/library/fade_through_transition_page.dart';
import '../page/library/shared_axis_transition_pge.dart';
import '../page/others/color_slider_page.dart';
import '../page/others/custom_calender_page.dart';
import '../page/others/flip_card_page.dart';
import '../page/others/navigator_page.dart';
import '../page/theme/color_theme_page.dart';
import '../page/theme/text_theme_page.dart';
import '../page/widget/about_dialog_page.dart';
import '../page/widget/absorb_painter_page.dart';
import '../page/widget/alert_dialog_page.dart';
import '../page/widget/align_page.dart';
import '../page/widget/animated_container_page.dart';
import '../page/widget/animated_cross_fade_page.dart';
import '../page/widget/backdrop_filter_page.dart';
import '../page/widget/bottom_app_bar_page.dart';
import '../page/widget/bottom_navigation_bar_page.dart';
import '../page/widget/bottom_sheet_page.dart';
import '../page/widget/checkbox_list_tile_page.dart';
import '../page/widget/checkbox_page.dart';
import '../page/widget/circle_avatar_page.dart';
import '../page/widget/circular_progress_indicator_page.dart';
import '../page/widget/clip_oval_page.dart';
import '../page/widget/clip_path_page.dart';
import '../page/widget/clip_r_rect_page.dart';
import '../page/widget/color_filtered_page.dart';
import '../page/widget/colored_box_page.dart';
import '../page/widget/column_page.dart';
import '../page/widget/container_page.dart';
import '../page/widget/custom_paint_page.dart';
import '../page/widget/data_table_page.dart';
import '../page/widget/date_picker_page.dart';
import '../page/widget/date_range_picker_page.dart';
import '../page/widget/decorated_box_page.dart';
import '../page/widget/dialog_page.dart';
import '../page/widget/dismissible_page.dart';
import '../page/widget/divider_page.dart';
import '../page/widget/draggable_page.dart';
import '../page/widget/draggable_scrollable_sheet_page.dart';
import '../page/widget/drawer_page.dart';
import '../page/widget/dropdown_menu_page.dart';
import '../page/widget/elevated_button_page.dart';
import '../page/widget/expanded_page.dart';
import '../page/widget/expansion_tile_page.dart';
import '../page/widget/fade_transition_page.dart';
import '../page/widget/filled_button_page.dart';
import '../page/widget/fitted_box_page.dart';
import '../page/widget/floating_action_button_page.dart';
import '../page/widget/flutter_logo_page.dart';
import '../page/widget/fractionally_sized_box_page.dart';
import '../page/widget/future_builder_page.dart';
import '../page/widget/gesture_detector_page.dart';
import '../page/widget/grid_paper_page.dart';
import '../page/widget/grid_tile_bar_page.dart';
import '../page/widget/grid_tile_page.dart';
import '../page/widget/grid_view_page.dart';
import '../page/widget/hero_page.dart';
import '../page/widget/icon_button_page.dart';
import '../page/widget/image_filtered_page.dart';
import '../page/widget/image_page.dart';
import '../page/widget/inkwell_page.dart';
import '../page/widget/interactive_viewer_page.dart';
import '../page/widget/license_page_page.dart';
import '../page/widget/linear_progress_indicator_page.dart';
import '../page/widget/list_tile_page.dart';
import '../page/widget/list_view_page.dart';
import '../page/widget/list_wheel_scroll_view_page.dart';
import '../page/widget/material_banner_page.dart';
import '../page/widget/material_page.dart';
import '../page/widget/matrix_transition_page.dart';
import '../page/widget/menu_anchor_page.dart';
import '../page/widget/navigation_rail_page.dart';
import '../page/widget/opacity_page.dart';
import '../page/widget/outlined_button_page.dart';
import '../page/widget/padding_page.dart';
import '../page/widget/page_view_page.dart';
import '../page/widget/physical_model_page.dart';
import '../page/widget/physical_shape_page.dart';
import '../page/widget/placeholder_page.dart';
import '../page/widget/pop_menu_button_page.dart';
import '../page/widget/positioned_page.dart';
import '../page/widget/radio_page.dart';
import '../page/widget/range_slider_page.dart';
import '../page/widget/refresh_indicator_page.dart';
import '../page/widget/reorderable_list_view_page.dart';
import '../page/widget/rich_text_page.dart';
import '../page/widget/rotated_box_page.dart';
import '../page/widget/rotation_transition_page.dart';
import '../page/widget/row_page.dart';
import '../page/widget/safe_area_page.dart';
import '../page/widget/scale_transition.dart';
import '../page/widget/scrollbar_page.dart';
import '../page/widget/search_anchor_page.dart';
import '../page/widget/search_bar_page.dart';
import '../page/widget/segmented_button_page.dart';
import '../page/widget/selectable_text_page.dart';
import '../page/widget/shader_mask_page.dart';
import '../page/widget/simple_dialog_page.dart';
import '../page/widget/single_child_scroll_view_page.dart';
import '../page/widget/size_transition_page.dart';
import '../page/widget/slide_transition_page.dart';
import '../page/widget/slider_page.dart';
import '../page/widget/sliver_fill_remaining_page.dart';
import '../page/widget/sliver_grid_page.dart';
import '../page/widget/sliver_list_page.dart';
import '../page/widget/sliver_to_box_adapter_page.dart';
import '../page/widget/snack_bar_page.dart';
import '../page/widget/stack_page.dart';
import '../page/widget/stepper_page.dart';
import '../page/widget/stream_builder_page.dart';
import '../page/widget/switch_list_tile_page.dart';
import '../page/widget/switch_page.dart';
import '../page/widget/tab_bar_page.dart';
import '../page/widget/tab_page_selector.dart';
import '../page/widget/text_button_page.dart';
import '../page/widget/text_field_page.dart';
import '../page/widget/text_page.dart';
import '../page/widget/time_picker_page.dart';
import '../page/widget/toggle_buttons_page.dart';
import '../page/widget/tooltip_page.dart';
import '../page/widget/transform_page.dart';
import '../page/widget/vertical_divider_page.dart';
import '../page/widget/visibility_page.dart';
import '../page/widget/wrap_page.dart';
import 'child_page_info.dart';
import 'page_category.dart';
import 'page_info.dart';
import 'page_tag.dart';

class PageList {
  PageList() {
    allList.sort((a, b) {
      return a.pageName.compareTo(b.pageName);
    });
  }
  final allList = [
    PageInfo(
      pageName: 'Navigator',
      page: const NavigatorPage(title: 'Navigator'),
      category: PageCategory.others,
      childPages: [
        ChildPageInfo(
          pageName: 'Navigator Child',
          page: const NavigatorChildPage(title: 'NavigatorChild (pushNamed)'),
        ),
      ],
    ),
    PageInfo(
      pageName: 'Text',
      page: const TextThemePage(title: 'Text Theme'),
      category: PageCategory.theme,
    ),
    PageInfo(
      pageName: 'Color',
      page: const ColorThemePage(title: 'Color Theme'),
      category: PageCategory.theme,
    ),
    PageInfo(
      pageName: 'Flip Card',
      page: const FlipCardPage(title: 'Flip Card'),
      category: PageCategory.others,
      subKeywords: [
        'AnimatedSwitcher',
        'AnimatedBuilder',
        'Transform',
        'Matrix4',
      ],
    ),
    PageInfo(
      pageName: 'Free Page',
      page: const FreePage(title: 'Free Page'),
      category: PageCategory.others,
    ),
    PageInfo(
      pageName: 'TabBar',
      page: const TabBarPage(title: 'TabBar'),
      tags: [PageTag.navigation],
      subKeywords: ['DefaultTabController', 'TabBarView'],
    ),
    PageInfo(
      pageName: 'BottomNavigationBar',
      page: const BottomNavigationBarPage(
        title: 'BottomNavigationBar',
      ),
      tags: [PageTag.navigation],
      subKeywords: ['BottomNavigationBarItem'],
    ),
    PageInfo(
      pageName: 'BottomAppBar',
      page: const BottomAppBarPage(title: 'BottomAppBar'),
      tags: [PageTag.navigation],
    ),
    PageInfo(
      pageName: 'NavigationRail',
      page: const NavigationRailPage(title: 'NavigationRail'),
      tags: [PageTag.navigation],
      subKeywords: ['NavigationRailDestination'],
    ),
    PageInfo(
      pageName: 'Drawer',
      page: const DrawerPage(title: 'Drawer'),
      tags: [PageTag.navigation],
      subKeywords: ['DrawerHeader'],
    ),
    PageInfo(
      pageName: 'SnackBar',
      page: const SnackBarPage(title: 'SnackBar'),
      subKeywords: ['ScaffoldMessenger', 'SnackBarAction'],
    ),
    PageInfo(
      pageName: 'Dialog',
      page: const DialogPage(title: 'Dialog'),
    ),
    PageInfo(
      pageName: 'SimpleDialog',
      page: const SimpleDialogPage(title: 'SimpleDialog'),
    ),
    PageInfo(
      pageName: 'LicensePage',
      page: const LicensePagePage(title: 'LicensePage'),
    ),
    PageInfo(
      pageName: 'AlertDialog',
      page: const AlertDialogPage(title: 'AlertDialog'),
    ),
    PageInfo(
      pageName: 'AboutDialog',
      page: const AboutDialogPage(title: 'AboutDialog'),
    ),
    PageInfo(
      pageName: 'TimePicker',
      page: const TimePickerPage(title: 'TimePicker'),
    ),
    PageInfo(
      pageName: 'DatePicker',
      page: const DatePickerPage(title: 'DatePicker'),
    ),
    PageInfo(
      pageName: 'PopMenuButton',
      page: const PopMenuButtonPage(title: 'PopMenuButton'),
      subKeywords: ['PopupMenuItem', 'PopupMenuDivider'],
    ),
    PageInfo(
      pageName: 'MenuAnchor',
      page: const MenuAnchorPage(title: 'MenuAnchor'),
      subKeywords: ['MenuItemButton', 'SubmenuButton'],
    ),
    PageInfo(
      pageName: 'Tooltip',
      page: const TooltipPage(title: 'Tooltip'),
    ),
    PageInfo(
      pageName: 'BottomSheet',
      page: const BottomSheetPage(title: 'BottomSheet'),
    ),
    PageInfo(
      pageName: 'MaterialBanner',
      page: const MaterialBannerPage(title: 'MaterialBanner'),
      subKeywords: ['ScaffoldMessenger'],
    ),
    PageInfo(
      pageName: 'Container',
      page: const ContainerPage(title: 'Container'),
    ),
    PageInfo(
      pageName: 'Placeholder',
      page: const PlaceholderPage(title: 'Placeholder'),
    ),
    PageInfo(
      pageName: 'FlutterLogo',
      page: const FlutterLogoPage(title: 'FlutterLogo'),
    ),
    PageInfo(
      pageName: 'ElevatedButton',
      page: const ElevatedButtonPage(title: 'ElevatedButton'),
    ),
    PageInfo(
      pageName: 'FilledButton',
      page: const FilledButtonPage(title: 'FilledButton'),
    ),
    PageInfo(
      pageName: 'TextButton',
      page: const TextButtonPage(title: 'TextButton'),
    ),
    PageInfo(
      pageName: 'OutlinedButton',
      page: const OutlinedButtonPage(title: 'OutlinedButton'),
    ),
    PageInfo(
      pageName: 'FloatingActionButton',
      page: const FloatingActionButtonPage(title: 'FloatingActionButton'),
    ),
    PageInfo(
      pageName: 'IconButton',
      page: const IconButtonPage(title: 'IconButton'),
    ),
    PageInfo(
      pageName: 'SegmentedButton',
      page: const SegmentedButtonPage(title: 'SegmentedButton'),
      subKeywords: ['ButtonSegment'],
    ),
    PageInfo(
      pageName: 'ToggleButtons',
      page: const ToggleButtonsPage(title: 'ToggleButtons'),
    ),
    PageInfo(
      pageName: 'ListTile',
      page: const ListTilePage(title: 'ListTile'),
    ),
    PageInfo(
      pageName: 'ListView',
      page: const ListViewPage(title: 'ListView'),
    ),
    PageInfo(
      pageName: 'ReorderableListView',
      page: const ReorderableListViewPage(title: 'ReorderableListView'),
      subKeywords: ['ReorderableDragStartListener'],
    ),
    PageInfo(
      pageName: 'SingleChildScrollView',
      page: const SingleChildScrollViewPage(title: 'SingleChildScrollView'),
    ),
    PageInfo(
      pageName: 'Scrollbar',
      page: const ScrollbarPage(title: 'Scrollbar'),
    ),
    PageInfo(
      pageName: 'PageView',
      page: const PageViewPage(title: 'PageView'),
      subKeywords: ['PageController'],
    ),
    PageInfo(
      pageName: 'TabPageSelector',
      page: const TabPageSelectorPage(title: 'TabPageSelector'),
      subKeywords: ['TabController'],
    ),
    PageInfo(
      pageName: 'LinearProgressIndicator',
      page: const LinearProgressIndicatorPage(title: 'LinearProgressIndicator'),
    ),
    PageInfo(
      pageName: 'CircularProgressIndicator',
      page: const CircularProgressIndicatorPage(
        title: 'CircularProgressIndicator',
      ),
    ),
    PageInfo(
      pageName: 'StreamBuilder',
      page: const StreamBuilderPage(title: 'StreamBuilder'),
    ),
    PageInfo(
      pageName: 'FutureBuilder',
      page: const FutureBuilderPage(title: 'FutureBuilder'),
    ),
    PageInfo(
      pageName: 'RefreshIndicator',
      page: const RefreshIndicatorPage(title: 'RefreshIndicator'),
    ),
    PageInfo(
      pageName: 'AnimatedContainer',
      page: const AnimatedContainerPage(title: 'AnimatedContainer'),
      tags: [PageTag.animation],
    ),
    PageInfo(
      pageName: 'DataTable',
      page: const DataTablePage(title: 'DataTable'),
    ),
    PageInfo(
      pageName: 'Stepper',
      page: const StepperPage(title: 'Stepper'),
      subKeywords: ['Step'],
    ),
    PageInfo(
      pageName: 'Draggable',
      page: const DraggablePage(title: 'Draggable'),
      subKeywords: ['DragTarget'],
    ),
    PageInfo(
      pageName: 'CustomPaint',
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
      page: const TransformPage(title: 'Transform'),
      subKeywords: ['Matrix4'],
    ),
    PageInfo(
      pageName: 'AbsorbPainter',
      page: const AbsorbPainterPage(title: 'AbsorbPainter'),
    ),
    PageInfo(
      pageName: 'SliverList',
      page: const SliverListPage(title: 'SliverList'),
      subKeywords: [
        'SliverAppBar',
        'CustomScrollView',
        'SliverChildBuilderDelegate',
      ],
    ),
    PageInfo(
      pageName: 'SliverGrid',
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
      page: const SliverToBoxAdapterPage(title: 'SliverToBoxAdapter'),
      subKeywords: [
        'SliverAppBar',
        'CustomScrollView',
      ],
    ),
    PageInfo(
      pageName: 'SliverFillRemaining',
      page: const SliverFillRemainingPage(title: 'SliverFillRemaining'),
      subKeywords: [
        'SliverAppBar',
        'CustomScrollView',
      ],
    ),
    PageInfo(
      pageName: 'DateRangePicker',
      page: const DateRangePickerPage(title: 'DateRangePicker'),
    ),
    PageInfo(
      pageName: 'ExpansionTile',
      page: const ExpansionTilePage(title: 'ExpansionTile'),
    ),
    PageInfo(
      pageName: 'SwitchListTile',
      page: const SwitchListTilePage(title: 'SwitchListTile'),
    ),
    PageInfo(
      pageName: 'CheckboxListTile',
      page: const CheckboxListTilePage(title: 'CheckboxListTile'),
    ),
    PageInfo(
      pageName: 'Checkbox',
      page: const CheckboxPage(title: 'Checkbox'),
    ),
    PageInfo(
      pageName: 'Switch',
      page: const SwitchPage(title: 'Switch'),
    ),
    PageInfo(
      pageName: 'Slider',
      page: const SliderPage(title: 'Slider'),
    ),
    PageInfo(
      pageName: 'RangeSlider',
      page: const RangeSliderPage(title: 'RangeSlider'),
    ),
    PageInfo(
      pageName: 'Radio',
      page: const RadioPage(title: 'Radio'),
    ),
    PageInfo(
      pageName: 'TextField',
      page: const TextFieldPage(title: 'TextField'),
      subKeywords: ['TextEditingController'],
    ),
    PageInfo(
      pageName: 'DropdownMenu',
      page: const DropdownMenuPage(title: 'DropdownMenu'),
      subKeywords: ['DropdownMenuEntry'],
    ),
    PageInfo(
      pageName: 'SafeArea',
      page: const SafeAreaPage(title: 'SafeArea'),
    ),
    PageInfo(
      pageName: 'Wrap',
      page: const WrapPage(title: 'Wrap'),
    ),
    PageInfo(
      pageName: 'Expanded',
      page: const ExpandedPage(title: 'Expanded'),
    ),
    PageInfo(
      pageName: 'Opacity',
      page: const OpacityPage(title: 'Opacity'),
    ),
    PageInfo(
      pageName: 'FadeTransition',
      page: const FadeTransitionPage(title: 'FadeTransition'),
      subKeywords: ['AnimationController', 'Tween'],
      tags: [PageTag.animation],
    ),
    PageInfo(
      pageName: 'Hero',
      page: const HeroPage(title: 'Hero'),
      childPages: [
        ChildPageInfo(
          pageName: 'HeroChild',
          page: const HeroChildPage(
            title: 'Hero (Child)',
          ),
        ),
      ],
    ),
    PageInfo(
      pageName: 'CircleAvatar',
      page: const CircleAvatarPage(title: 'CircleAvatar'),
    ),
    PageInfo(
      pageName: 'GridView',
      page: const GridViewPage(title: 'GridView'),
    ),
    PageInfo(
      pageName: 'AnimatedCrossFade',
      page: const AnimatedCrossFadePage(title: 'AnimatedCrossFade'),
      tags: [PageTag.animation],
    ),
    PageInfo(
      pageName: 'Divider',
      page: const DividerPage(title: 'Divider'),
    ),
    PageInfo(
      pageName: 'VerticalDivider',
      page: const VerticalDividerPage(title: 'VerticalDivider'),
    ),
    PageInfo(
      pageName: 'SearchAnchor',
      page: const SearchAnchorPage(title: 'SearchAnchor'),
    ),
    PageInfo(
      pageName: 'SearchBar',
      page: const SearchBarPage(title: 'SearchBar'),
    ),
    PageInfo(
      pageName: 'SelectableText',
      page: const SelectableTextPage(title: 'SelectableText'),
    ),
    PageInfo(
      pageName: 'Text',
      page: const TextPage(title: 'Text'),
    ),
    PageInfo(
      pageName: 'RichText',
      page: const RichTextPage(title: 'RichText'),
      subKeywords: ['TextSpan'],
    ),
    PageInfo(
      pageName: 'ClipRRect',
      page: const ClipRRectPage(title: 'ClipRRect'),
    ),
    PageInfo(
      pageName: 'ClipOval',
      page: const ClipOvalPage(title: 'ClipOval'),
    ),
    PageInfo(
      pageName: 'ClipPath',
      page: const ClipPathPage(title: 'ClipPath'),
    ),
    PageInfo(
      pageName: 'ClipPath',
      page: const ClipPathPage(title: 'ClipPath'),
    ),
    PageInfo(
      pageName: 'Column',
      page: const ColumnPage(title: 'Column'),
    ),
    PageInfo(
      pageName: 'Row',
      page: const RowPage(title: 'Row'),
    ),
    PageInfo(
      pageName: 'ImageFiltered',
      page: const ImageFilteredPage(title: 'ImageFiltered'),
    ),
    PageInfo(
      pageName: 'BackdropFilter',
      page: const BackdropFilterPage(title: 'BackdropFilter'),
    ),
    PageInfo(
      pageName: 'ShaderMask',
      page: const ShaderMaskPage(title: 'ShaderMask'),
    ),
    PageInfo(
      pageName: 'RotatedBox',
      page: const RotatedBoxPage(title: 'RotatedBox'),
    ),
    PageInfo(
      pageName: 'Image',
      page: const ImagePage(title: 'Image'),
    ),
    PageInfo(
      pageName: 'FittedBox',
      page: const FittedBoxPage(title: 'FittedBox'),
    ),
    PageInfo(
      pageName: 'Align',
      page: const AlignPage(title: 'Align'),
    ),
    PageInfo(
      pageName: 'Positioned',
      page: const PositionedPage(title: 'Positioned'),
    ),
    PageInfo(
      pageName: 'Stack',
      page: const StackPage(title: 'Stack'),
    ),
    PageInfo(
      pageName: 'ColoredBox',
      page: const ColoredBoxPage(title: 'ColoredBox'),
    ),
    PageInfo(
      pageName: 'DecoratedBox',
      page: const DecoratedBoxPage(title: 'DecoratedBox'),
    ),
    PageInfo(
      pageName: 'ColorFiltered',
      page: const ColorFilteredPage(title: 'ColorFiltered'),
    ),
    PageInfo(
      pageName: 'ListWheelScrollView',
      page: const ListWheelScrollViewPage(title: 'ListWheelScrollView'),
    ),
    PageInfo(
      pageName: 'Dismissible',
      page: const DismissiblePage(title: 'Dismissible'),
    ),
    PageInfo(
      pageName: 'InteractiveViewer',
      page: const InteractiveViewerPage(title: 'InteractiveViewer'),
    ),
    PageInfo(
      pageName: 'Padding',
      page: const PaddingPage(title: 'Padding'),
    ),
    PageInfo(
      pageName: 'GridPaper',
      page: const GridPaperPage(title: 'GridPaper'),
    ),
    PageInfo(
      pageName: 'Inkwell',
      page: const InkwellPage(title: 'Inkwell'),
      subKeywords: ['Ink'],
    ),
    PageInfo(
      pageName: 'Visibility',
      page: const VisibilityPage(title: 'Visibility'),
    ),
    PageInfo(
      pageName: 'FractionallySizedBox',
      page: const FractionallySizedBoxPage(title: 'FractionallySizedBox'),
    ),
    PageInfo(
      pageName: 'GridTile',
      page: const GridTilePage(title: 'GridTile'),
    ),
    PageInfo(
      pageName: 'GridTileBar',
      page: const GridTileBarPage(title: 'GridTileBar'),
      subKeywords: ['GridTile'],
    ),
    PageInfo(
      pageName: 'DraggableScrollableSheet',
      page: const DraggableScrollableSheetPage(
        title: 'DraggableScrollableSheet',
      ),
    ),
    PageInfo(
      pageName: 'PhysicalModel',
      page: const PhysicalModelPage(
        title: 'PhysicalModel',
      ),
    ),
    PageInfo(
      pageName: 'PhysicalShape',
      page: const PhysicalShapePage(
        title: 'PhysicalShape',
      ),
    ),
    PageInfo(
      pageName: 'Material',
      page: const MaterialWidgetPage(
        title: 'Material',
      ),
    ),
    PageInfo(
      pageName: 'SlideTransition',
      page: const SlideTransitionPage(
        title: 'SlideTransition',
      ),
      tags: [PageTag.animation],
    ),
    PageInfo(
      pageName: 'ScaleTransition',
      page: const ScaleTransitionPage(
        title: 'ScaleTransition',
      ),
      tags: [PageTag.animation],
    ),
    PageInfo(
      pageName: 'SharedAxisTransition',
      page: const SharedAxisTransitionPage(
        title: 'SharedAxisTransition',
      ),
      category: PageCategory.library,
      tags: [PageTag.animation],
      subKeywords: ['PageTransitionSwitcher'],
    ),
    PageInfo(
      pageName: 'FadeThroughTransition',
      page: const FadeThroughTransitionPage(
        title: 'FadeThroughTransition',
      ),
      category: PageCategory.library,
      tags: [PageTag.animation],
      subKeywords: ['PageTransitionSwitcher'],
    ),
    PageInfo(
      pageName: 'FadeScaleTransition',
      page: const FadeScaleTransitionPage(
        title: 'FadeScaleTransition',
      ),
      category: PageCategory.library,
      tags: [PageTag.animation],
      subKeywords: ['PageTransitionSwitcher'],
    ),
    PageInfo(
      pageName: 'ColorSlider',
      page: const ColorSliderPage(
        title: 'ColorSlider',
      ),
      category: PageCategory.others,
      subKeywords: [
        'Slider',
        'SliderTheme',
        'SliderComponentShape',
        'SliderTrackShape',
      ],
    ),
    PageInfo(
      pageName: 'CustomCalender',
      page: const CustomCalenderPage(
        title: 'CustomCalender',
      ),
      category: PageCategory.others,
      subKeywords: [
        'Material',
        'Inkwell',
        'Positioned',
        'Stack',
        'AspectRatio',
      ],
    ),
    PageInfo(
      pageName: 'GestureDetector',
      page: const GestureDetectorPage(
        title: 'GestureDetector',
      ),
    ),
    PageInfo(
      pageName: 'MatrixTransition',
      page: const MatrixTransitionPage(
        title: 'MatrixTransition',
      ),
      tags: [PageTag.animation],
    ),
    PageInfo(
      pageName: 'RotationTransition',
      page: const RotationTransitionPage(
        title: 'RotationTransition',
      ),
      tags: [PageTag.animation],
    ),
    PageInfo(
      pageName: 'SizeTransition',
      page: const SizeTransitionPage(
        title: 'SizeTransition',
      ),
      tags: [PageTag.animation],
    ),
    // PageInfo(
    //   pageName: 'PositionedTransition',
    //   page: const PositionedTransitionPage(
    //     title: 'PositionedTransition',
    //   ),
    //   tags: [PageTag.animation],
    // ),
    // PageInfo(
    //   pageName: 'ClipRect',
    //   page: const ClipRectPage(title: 'ClipRect'),
    // ),
  ];

  Map<String, Widget Function(BuildContext)> getRootMap() {
    final pageRoutes = <String, Widget Function(BuildContext)>{};
    for (final page in allList) {
      pageRoutes[page.pageRoute] = (context) => page.page;
      for (final childPage in page.childPages) {
        pageRoutes[childPage.pageRoute] = (context) => childPage.page;
      }
    }
    return pageRoutes;
  }

  Iterable<PageInfo> searchWords(
    String words, {
    String tagPrefix = PageConsts.tagPrefix,
  }) {
    final list = words.trim().split(' ');

    if (list.isEmpty) {
      return const Iterable.empty();
    }

    final wordList = list.where((e) => !e.startsWith(tagPrefix)).toList();

    final allTagNameList = PageTag.values.map((e) => e.name);
    final tagTextList = list
        .where((e) => e.startsWith(tagPrefix))
        .map((e) => e.toLowerCase().substring(tagPrefix.length, e.length));

    late List<PageTag> tagList;
    if (tagTextList.every(allTagNameList.contains)) {
      tagList = tagTextList
          .where(allTagNameList.contains)
          .map<PageTag>((e) => PageTag.values.byName(e))
          .toList();
    } else {
      tagList = [PageTag.error];
    }

    return _filter(wordList, tagList);
  }

  Iterable<PageInfo> _filter(List<String> words, List<PageTag> tags) {
    return allList.where(
      (element) => element.isMatchWords(words) && element.isMatchTags(tags),
    );
  }
}

class PageConsts {
  static const tagPrefix = '::';
}
