import 'package:flutter/material.dart';

class TextThemePage extends StatefulWidget {
  const TextThemePage({super.key, required this.title});

  final String title;

  @override
  State<TextThemePage> createState() => _TextThemePageState();
}

class _TextThemePageState extends State<TextThemePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              'Display Large',
              style: textTheme.displayLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Display Medium',
              style: textTheme.displayMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Display Small',
              style: textTheme.displaySmall,
            ),
            const SizedBox(height: 32),
            Text(
              'Headline Large',
              style: textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Headline Medium',
              style: textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Headline Small',
              style: textTheme.headlineSmall,
            ),
            const SizedBox(height: 32),
            Text(
              'Title Large',
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Title Medium',
              style: textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Title Small',
              style: textTheme.titleSmall,
            ),
            const SizedBox(height: 32),
            Text(
              'Label Large',
              style: textTheme.labelLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Label Medium',
              style: textTheme.labelMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Label Small',
              style: textTheme.labelSmall,
            ),
            const SizedBox(height: 32),
            Text(
              'Body Large',
              style: textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Body Medium',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Body Small',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
