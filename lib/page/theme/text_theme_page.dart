import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

class TextThemePage extends StatefulWidget {
  const TextThemePage({super.key, required this.title});

  final String title;

  @override
  State<TextThemePage> createState() => _TextThemePageState();
}

class _TextThemePageState extends State<TextThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Text(
            'Display Large',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Display Medium',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Display Small',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          StyleConsts.sizedBoxH32,
          Text(
            'Headline Large',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Headline Medium',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Headline Small',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          StyleConsts.sizedBoxH32,
          Text(
            'Title Large',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Title Medium',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Title Small',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          StyleConsts.sizedBoxH32,
          Text(
            'Label Large',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Label Medium',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Label Small',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          StyleConsts.sizedBoxH32,
          Text(
            'Body Large',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Body Medium',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          StyleConsts.sizedBoxH16,
          Text(
            'Body Small',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
