import 'package:flutter/material.dart';
import 'package:ui_sample/const/style_const.dart';

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
        child: SingleChildScrollView(
            child: Padding(
          padding: StyleConsts.padding16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _section(
                children: [
                  _colorContainer(
                    title: 'Primary',
                    backgroungColor: colorScheme.primary,
                    textColor: colorScheme.onPrimary,
                  ),
                  _colorContainer(
                    title: 'On Primary',
                    backgroungColor: colorScheme.onPrimary,
                    textColor: colorScheme.primary,
                  ),
                  _colorContainer(
                    title: 'Primary Container',
                    backgroungColor: colorScheme.primaryContainer,
                    textColor: colorScheme.onPrimaryContainer,
                  ),
                  _colorContainer(
                    title: 'On Primary Container',
                    backgroungColor: colorScheme.onPrimaryContainer,
                    textColor: colorScheme.primaryContainer,
                  ),
                ],
              ),
              StyleConsts.sizedBoxH16,
              _section(
                children: [
                  _colorContainer(
                    title: 'Secondary',
                    backgroungColor: colorScheme.secondary,
                    textColor: colorScheme.onSecondary,
                  ),
                  _colorContainer(
                    title: 'On Secondary',
                    backgroungColor: colorScheme.onSecondary,
                    textColor: colorScheme.secondary,
                  ),
                  _colorContainer(
                    title: 'Secondary Container',
                    backgroungColor: colorScheme.secondaryContainer,
                    textColor: colorScheme.onSecondaryContainer,
                  ),
                  _colorContainer(
                    title: 'On Secondary Container',
                    backgroungColor: colorScheme.onSecondaryContainer,
                    textColor: colorScheme.secondaryContainer,
                  ),
                ],
              ),
              StyleConsts.sizedBoxH16,
              _section(
                children: [
                  _colorContainer(
                    title: 'Tertiary',
                    backgroungColor: colorScheme.tertiary,
                    textColor: colorScheme.onTertiary,
                  ),
                  _colorContainer(
                    title: 'On Tertiary',
                    backgroungColor: colorScheme.onTertiary,
                    textColor: colorScheme.tertiary,
                  ),
                  _colorContainer(
                    title: 'Tertiary Container',
                    backgroungColor: colorScheme.tertiaryContainer,
                    textColor: colorScheme.onTertiaryContainer,
                  ),
                  _colorContainer(
                    title: 'On Tertiary Container',
                    backgroungColor: colorScheme.onTertiaryContainer,
                    textColor: colorScheme.tertiaryContainer,
                  ),
                ],
              ),
              StyleConsts.sizedBoxH16,
              _section(
                children: [
                  _colorContainer(
                    title: 'Error',
                    backgroungColor: colorScheme.error,
                    textColor: colorScheme.onError,
                  ),
                  _colorContainer(
                    title: 'On Error',
                    backgroungColor: colorScheme.onError,
                    textColor: colorScheme.error,
                  ),
                  _colorContainer(
                    title: 'Error Container',
                    backgroungColor: colorScheme.errorContainer,
                    textColor: colorScheme.onErrorContainer,
                  ),
                  _colorContainer(
                    title: 'On Error Container',
                    backgroungColor: colorScheme.onErrorContainer,
                    textColor: colorScheme.errorContainer,
                  ),
                ],
              ),
              StyleConsts.sizedBoxH16,
              _section(
                children: [
                  _colorContainer(
                    title: 'Surface',
                    backgroungColor: colorScheme.surface,
                    textColor: colorScheme.onSurface,
                  ),
                  _colorContainer(
                    title: 'On Surface',
                    backgroungColor: colorScheme.onSurface,
                    textColor: colorScheme.surface,
                  ),
                  _colorContainer(
                    title: 'Surface Variant',
                    backgroungColor: colorScheme.surfaceVariant,
                    textColor: colorScheme.onSurfaceVariant,
                  ),
                  _colorContainer(
                    title: 'On Surface Variant',
                    backgroungColor: colorScheme.onSurfaceVariant,
                    textColor: colorScheme.surfaceVariant,
                  ),
                  _colorContainer(
                    title: 'Surface Tint',
                    backgroungColor: colorScheme.surfaceTint,
                    textColor: colorScheme.onInverseSurface,
                  ),
                ],
              ),
              StyleConsts.sizedBoxH16,
              _section(
                children: [
                  _colorContainer(
                    title: 'Outline',
                    backgroungColor: colorScheme.outline,
                    textColor: colorScheme.onInverseSurface,
                  ),
                  _colorContainer(
                    title: 'Outline Variant',
                    backgroungColor: colorScheme.outlineVariant,
                    textColor: colorScheme.onSurface,
                  ),
                ],
              ),
              StyleConsts.sizedBoxH16,
              _section(
                children: [
                  _colorContainer(
                    title: 'Inverse Surface',
                    backgroungColor: colorScheme.inverseSurface,
                    textColor: colorScheme.onInverseSurface,
                  ),
                  _colorContainer(
                    title: 'On Inverse Surface',
                    backgroungColor: colorScheme.onInverseSurface,
                    textColor: colorScheme.inverseSurface,
                  ),
                  _colorContainer(
                    title: 'Inverse Primary',
                    backgroungColor: colorScheme.inversePrimary,
                    textColor: colorScheme.onPrimaryContainer,
                  ),
                ],
              ),
              StyleConsts.sizedBoxH16,
              _section(
                children: [
                  _colorContainer(
                    title: 'Background',
                    backgroungColor: colorScheme.background,
                    textColor: colorScheme.onBackground,
                  ),
                  _colorContainer(
                    title: 'On Background',
                    backgroungColor: colorScheme.onBackground,
                    textColor: colorScheme.background,
                  ),
                  _colorContainer(
                    title: 'Scrim',
                    backgroungColor: colorScheme.scrim,
                    textColor: colorScheme.onInverseSurface,
                  ),
                  _colorContainer(
                    title: 'Shadow',
                    backgroungColor: colorScheme.shadow,
                    textColor: colorScheme.onInverseSurface,
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }

  Widget _colorContainer(
      {required String title,
      required Color backgroungColor,
      required Color textColor}) {
    return Container(
      color: backgroungColor,
      alignment: Alignment.centerLeft,
      padding: StyleConsts.padding16,
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget _section({required List<Widget> children}) {
    return ClipRRect(
      borderRadius: StyleConsts.borderRadiusCircle8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
