import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key, required this.title});

  final String title;

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final PageController _controller = PageController(
    initialPage: 1,
    viewportFraction: 0.9,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView(
          controller: _controller,
          children: [
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Center(
                child: Text('Page 1'),
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('左右にスクロールできます。'),
                    StyleConsts.sizedBoxH16,
                    Text('Page 2'),
                  ],
                ),
              ),
            ),
            Container(
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Center(
                child: Text('Page 3'),
              ),
            ),
          ],
        ));
  }
}
