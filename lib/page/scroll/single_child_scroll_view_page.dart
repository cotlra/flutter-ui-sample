import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  const SingleChildScrollViewPage({super.key, required this.title});

  final String title;

  @override
  State<SingleChildScrollViewPage> createState() =>
      _SingleChildScrollViewPageState();
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Theme.of(context).primaryColor,
                  height: StyleConsts.value208,
                  width: StyleConsts.value208,
                ),
                const SizedBox(
                  height: StyleConsts.value72,
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: StyleConsts.value208,
                  width: StyleConsts.value208,
                ),
                const SizedBox(
                  height: StyleConsts.value72,
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: StyleConsts.value208,
                  width: StyleConsts.value208,
                ),
                const SizedBox(
                  height: StyleConsts.value72,
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: StyleConsts.value208,
                  width: StyleConsts.value208,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
