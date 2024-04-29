import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({super.key, required this.title});

  final String title;

  @override
  State<DraggablePage> createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Color? draggedColor = null;
  @override
  Widget build(BuildContext context) {
    var themeColor = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  width: StyleConsts.value128,
                  height: StyleConsts.value128,
                  child: DragTarget<Color>(
                    builder: (BuildContext context, List<Color?> candidateData,
                        List<dynamic> rejectedData) {
                      return Container(
                        color: draggedColor ?? themeColor.primaryContainer,
                        child: Center(
                          child: Text(
                            'Drag Target',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: themeColor.background),
                          ),
                        ),
                      );
                    },
                    onAcceptWithDetails: (DragTargetDetails<Color> details) {
                      draggedColor = details.data;
                    },
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _colorBox(themeColor.primary, themeColor.onPrimary),
                _colorBox(themeColor.secondary, themeColor.onSecondary),
                _colorBox(themeColor.tertiary, themeColor.onTertiary),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _colorBox(Color backgroundColor, Color textColor) {
    return Draggable<Color>(
      data: backgroundColor,
      feedback: SizedBox(
        width: StyleConsts.value72,
        height: StyleConsts.value72,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          child: Center(
            child: Text(
              'Draggable',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: textColor),
            ),
          ),
        ),
      ),
      childWhenDragging: SizedBox(
        width: StyleConsts.value72,
        height: StyleConsts.value72,
        child: Container(
          color: backgroundColor.withAlpha(0x55),
          child: Center(
            child: Text(
              'Draggable',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: textColor),
            ),
          ),
        ),
      ),
      child: SizedBox(
        width: StyleConsts.value72,
        height: StyleConsts.value72,
        child: Container(
          color: backgroundColor,
          child: Center(
            child: Text(
              'Draggable',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
