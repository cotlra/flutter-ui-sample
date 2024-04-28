import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class TooltipPage extends StatefulWidget {
  const TooltipPage({super.key, required this.title});

  final String title;

  @override
  State<TooltipPage> createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              tooltip: 'Tooltip（プロパティ）',
              onPressed: () {},
            ),
            StyleConsts.sizedBoxH16,
            Tooltip(
              message: 'Tooltip（ウィジェット）',
              child: SizedBox(
                width: StyleConsts.value80,
                height: StyleConsts.value80,
                child: Container(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
