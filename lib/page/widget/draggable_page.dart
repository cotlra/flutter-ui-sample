import 'package:flutter/material.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({super.key, required this.title});

  final String title;

  @override
  State<DraggablePage> createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Color? draggedColor;
  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: DragTarget<Color>(
                  builder: (
                    BuildContext context,
                    List<Color?> candidateData,
                    List<dynamic> rejectedData,
                  ) {
                    return Container(
                      width: 128,
                      height: 128,
                      color: draggedColor ?? themeColor.primaryContainer,
                      alignment: Alignment.center,
                      child: Text(
                        'Drag Target',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: themeColor.surface),
                      ),
                    );
                  },
                  onAcceptWithDetails: (DragTargetDetails<Color> details) {
                    draggedColor = details.data;
                  },
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
      feedback: Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        alignment: Alignment.center,
        child: Text(
          'Draggable',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: textColor),
        ),
      ),
      childWhenDragging: Container(
        width: 72,
        height: 72,
        color: backgroundColor.withAlpha(0x55),
        alignment: Alignment.center,
        child: Text(
          'Draggable',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: textColor),
        ),
      ),
      child: Container(
        width: 72,
        height: 72,
        color: backgroundColor,
        alignment: Alignment.center,
        child: Text(
          'Draggable',
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: textColor),
        ),
      ),
    );
  }
}
