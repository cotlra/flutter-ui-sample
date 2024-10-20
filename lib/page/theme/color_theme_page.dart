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
              title: 'Primary Fixed',
              backgroundColor: colorScheme.primaryFixed,
              textColor: colorScheme.onPrimaryFixed,
            ),
            _colorContainer(
              title: 'Primary Fixed Dim',
              backgroundColor: colorScheme.primaryFixedDim,
              textColor: colorScheme.onPrimaryFixed,
            ),
            _colorContainer(
              title: 'On Primary Fixed',
              backgroundColor: colorScheme.onPrimaryFixed,
              textColor: colorScheme.primaryFixed,
            ),
            _colorContainer(
              title: 'On Primary Fixed Variant',
              backgroundColor: colorScheme.onPrimaryFixedVariant,
              textColor: colorScheme.primaryFixed,
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
              title: 'Secondary Fixed',
              backgroundColor: colorScheme.secondaryFixed,
              textColor: colorScheme.onSecondaryFixed,
            ),
            _colorContainer(
              title: 'Secondary Fixed Dim',
              backgroundColor: colorScheme.secondaryFixedDim,
              textColor: colorScheme.onSecondaryFixed,
            ),
            _colorContainer(
              title: 'On Secondary Fixed',
              backgroundColor: colorScheme.onSecondaryFixed,
              textColor: colorScheme.secondaryFixed,
            ),
            _colorContainer(
              title: 'On Secondary Fixed Variant',
              backgroundColor: colorScheme.onSecondaryFixedVariant,
              textColor: colorScheme.secondaryFixed,
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
              title: 'Tertiary Fixed',
              backgroundColor: colorScheme.tertiaryFixed,
              textColor: colorScheme.onTertiaryFixed,
            ),
            _colorContainer(
              title: 'Tertiary Fixed Dim',
              backgroundColor: colorScheme.tertiaryFixedDim,
              textColor: colorScheme.onTertiaryFixed,
            ),
            _colorContainer(
              title: 'On Tertiary Fixed',
              backgroundColor: colorScheme.onTertiaryFixed,
              textColor: colorScheme.tertiaryFixed,
            ),
            _colorContainer(
              title: 'On Tertiary Fixed Variant',
              backgroundColor: colorScheme.onTertiaryFixedVariant,
              textColor: colorScheme.tertiaryFixed,
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
              title: 'Surface Dim',
              backgroundColor: colorScheme.surfaceDim,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Surface',
              backgroundColor: colorScheme.surface,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Surface Bright',
              backgroundColor: colorScheme.surfaceBright,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Surface Container Lowest',
              backgroundColor: colorScheme.surfaceContainerLowest,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Surface Container Low',
              backgroundColor: colorScheme.surfaceContainerLow,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Surface Container',
              backgroundColor: colorScheme.surfaceContainer,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Surface Container High',
              backgroundColor: colorScheme.surfaceContainerHigh,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'Surface Container Highest',
              backgroundColor: colorScheme.surfaceContainerHighest,
              textColor: colorScheme.onSurface,
            ),
            _colorContainer(
              title: 'On Surface',
              backgroundColor: colorScheme.onSurface,
              textColor: colorScheme.surface,
            ),
            _colorContainer(
              title: 'On Surface Variant',
              backgroundColor: colorScheme.onSurfaceVariant,
              textColor: colorScheme.surface,
            ),
            _colorContainer(
              title: 'Outline',
              backgroundColor: colorScheme.outline,
              textColor: colorScheme.onSurface,
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
