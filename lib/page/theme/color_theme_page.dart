import 'package:flutter/material.dart';

class ColorThemePage extends StatefulWidget {
  const ColorThemePage({super.key, required this.title});

  final String title;

  @override
  State<ColorThemePage> createState() => _ColorThemePageState();
}

class _ColorThemePageState extends State<ColorThemePage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _colorContainer(
              title: 'Primary',
              backgroundColor: colorScheme.primary,
              textColor: colorScheme.onPrimary,
            ),
            _colorContainer(
              title: 'On Primary',
              backgroundColor: colorScheme.onPrimary,
              textColor: colorScheme.primary,
            ),
            _colorContainer(
              title: 'Primary Container',
              backgroundColor: colorScheme.primaryContainer,
              textColor: colorScheme.onPrimaryContainer,
            ),
            _colorContainer(
              title: 'On Primary Container',
              backgroundColor: colorScheme.onPrimaryContainer,
              textColor: colorScheme.primaryContainer,
            ),
            _colorContainer(
              title: 'Secondary',
              backgroundColor: colorScheme.secondary,
              textColor: colorScheme.onSecondary,
            ),
            _colorContainer(
              title: 'On Secondary',
              backgroundColor: colorScheme.onSecondary,
              textColor: colorScheme.secondary,
            ),
            _colorContainer(
              title: 'Secondary Container',
              backgroundColor: colorScheme.secondaryContainer,
              textColor: colorScheme.onSecondaryContainer,
            ),
            _colorContainer(
              title: 'On Secondary Container',
              backgroundColor: colorScheme.onSecondaryContainer,
              textColor: colorScheme.secondaryContainer,
            ),
            _colorContainer(
              title: 'Tertiary',
              backgroundColor: colorScheme.tertiary,
              textColor: colorScheme.onTertiary,
            ),
            _colorContainer(
              title: 'On Tertiary',
              backgroundColor: colorScheme.onTertiary,
              textColor: colorScheme.tertiary,
            ),
            _colorContainer(
              title: 'Tertiary Container',
              backgroundColor: colorScheme.tertiaryContainer,
              textColor: colorScheme.onTertiaryContainer,
            ),
            _colorContainer(
              title: 'On Tertiary Container',
              backgroundColor: colorScheme.onTertiaryContainer,
              textColor: colorScheme.tertiaryContainer,
            ),
            _colorContainer(
              title: 'Error',
              backgroundColor: colorScheme.error,
              textColor: colorScheme.onError,
            ),
            _colorContainer(
              title: 'On Error',
              backgroundColor: colorScheme.onError,
              textColor: colorScheme.error,
            ),
            _colorContainer(
              title: 'Error Container',
              backgroundColor: colorScheme.errorContainer,
              textColor: colorScheme.onErrorContainer,
            ),
            _colorContainer(
              title: 'On Error Container',
              backgroundColor: colorScheme.onErrorContainer,
              textColor: colorScheme.errorContainer,
            ),
            _colorContainer(
              title: 'Surface',
              backgroundColor: colorScheme.surface,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'On Surface',
              backgroundColor: colorScheme.onSurface,
              textColor: colorScheme.surface,
            ),
            _colorContainer(
              title: 'Surface Variant',
              backgroundColor: colorScheme.surfaceVariant,
              textColor: colorScheme.onSurfaceVariant,
            ),
            _colorContainer(
              title: 'On Surface Variant',
              backgroundColor: colorScheme.onSurfaceVariant,
              textColor: colorScheme.surfaceVariant,
            ),
            _colorContainer(
              title: 'Surface Tint',
              backgroundColor: colorScheme.surfaceTint,
              textColor: colorScheme.onInverseSurface,
            ),
            _colorContainer(
              title: 'Outline',
              backgroundColor: colorScheme.outline,
              textColor: colorScheme.onInverseSurface,
            ),
            _colorContainer(
              title: 'Outline Variant',
              backgroundColor: colorScheme.outlineVariant,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Inverse Surface',
              backgroundColor: colorScheme.inverseSurface,
              textColor: colorScheme.onInverseSurface,
            ),
            _colorContainer(
              title: 'On Inverse Surface',
              backgroundColor: colorScheme.onInverseSurface,
              textColor: colorScheme.inverseSurface,
            ),
            _colorContainer(
              title: 'Inverse Primary',
              backgroundColor: colorScheme.inversePrimary,
              textColor: colorScheme.onPrimaryContainer,
            ),
            _colorContainer(
              title: 'Background',
              backgroundColor: colorScheme.background,
              textColor: colorScheme.onBackground,
            ),
            _colorContainer(
              title: 'On Background',
              backgroundColor: colorScheme.onBackground,
              textColor: colorScheme.background,
            ),
            _colorContainer(
              title: 'Scrim',
              backgroundColor: colorScheme.scrim,
              textColor: colorScheme.onInverseSurface,
            ),
            _colorContainer(
              title: 'Shadow',
              backgroundColor: colorScheme.shadow,
              textColor: colorScheme.onInverseSurface,
            ),
          ],
        ),
      ),
    );
  }

  Widget _colorContainer({
    required String title,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Container(
      color: backgroundColor,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
