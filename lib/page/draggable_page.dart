import 'package:flutter/material.dart';
import 'package:sand_box_002/const/style_const.dart';

class DraggablePage extends StatefulWidget {
  const DraggablePage({super.key, required this.title});

  final String title;

  @override
  State<DraggablePage> createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  width: StyleConsts.value128,
                  height: StyleConsts.value128,
                  child: DragTarget<int>(
                    builder: (BuildContext context, List<int?> candidateData, List<dynamic> rejectedData) {
                      return Placeholder();
                    },

                  ),
                ),
              ),
            ),
            Draggable<int>(
              data: 0,
              feedback: SizedBox(
                width: StyleConsts.value72,
                height: StyleConsts.value72,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Draggable',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ),
                ),
              ),
              childWhenDragging: SizedBox(
                width: StyleConsts.value72,
                height: StyleConsts.value72,
                child: Container(
                  color: Theme.of(context).primaryColor.withAlpha(0x55),
                  child: Center(
                    child: Text(
                      'Draggable',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ),
                ),
              ),
              child: SizedBox(
                width: StyleConsts.value72,
                height: StyleConsts.value72,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      'Draggable',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
