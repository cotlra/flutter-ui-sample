import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class IndicatorPage extends StatefulWidget {
  const IndicatorPage({super.key, required this.title});

  final String title;

  @override
  State<IndicatorPage> createState() => _IndicatorPageState();
}

class _IndicatorPageState extends State<IndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Column(
        children: [
          LinearProgressIndicator(),
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  StyleConsts.sizedBoxH16,
                  CupertinoActivityIndicator(),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
