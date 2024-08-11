import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ColorSliderPage extends StatefulWidget {
  const ColorSliderPage({super.key, required this.title});

  final String title;

  @override
  State<ColorSliderPage> createState() => _ColorSliderPageState();
}

class _ColorSliderPageState extends State<ColorSliderPage> {
  double _red = 0;
  double _blue = 0;
  double _green = 0;

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          height: 160,
          width: 160,
          color: getCurrentColor(),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: MyThumbShape(
              value: _red,
              backgroundColor: getCurrentColor(),
            ),
            trackShape: TwoGradientTrackShape(
              leftColor: Color(0xff00ffff & getCurrentValue()),
              rightColor: Color(0x00ff0000 | getCurrentValue()),
            ),
          ),
          child: Slider(
            value: _red,
            max: 255,
            onChanged: (double value) {
              setState(() {
                _red = value;
              });
            },
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: MyThumbShape(
              value: _green,
              backgroundColor: getCurrentColor(),
            ),
            trackShape: TwoGradientTrackShape(
              leftColor: Color(0xffff00ff & getCurrentValue()),
              rightColor: Color(0x0000ff00 | getCurrentValue()),
            ),
          ),
          child: Slider(
            value: _green,
            max: 255,
            onChanged: (double value) {
              setState(() {
                _green = value;
              });
            },
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: MyThumbShape(
              value: _blue,
              backgroundColor: getCurrentColor(),
            ),
            trackShape: TwoGradientTrackShape(
              leftColor: Color(0xffffff00 & getCurrentValue()),
              rightColor: Color(0x000000ff | getCurrentValue()),
            ),
          ),
          child: Slider(
            value: _blue,
            max: 255,
            onChanged: (double value) {
              setState(() {
                _blue = value;
              });
            },
          ),
        ),
      ],
    );
  }

  int getCurrentValue() {
    return 0xff000000 |
        (_red.round() << 4 * 4) |
        (_green.round() << 4 * 2) |
        (_blue.round());
  }

  Color getCurrentColor() {
    return Color(getCurrentValue());
  }
}

class MyThumbShape extends SliderComponentShape {
  MyThumbShape({required this.value, required this.backgroundColor});

  final double value;
  final Color backgroundColor;
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(44, 44);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final paint1 = Paint()..color = Colors.white;
    final paint2 = Paint()..color = backgroundColor;
    final textPainter = TextPainter(
      text: TextSpan(
        text: this.value.round().toString(),
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      textDirection: textDirection,
    );
    context.canvas.drawCircle(center, 22, paint2);
    context.canvas.drawCircle(center, 18, paint1);
    textPainter
      ..layout()
      ..paint(
        context.canvas,
        Offset(
          center.dx - textPainter.size.width / 2,
          center.dy - textPainter.size.height / 2,
        ),
      );
  }
}

class HueTrackShape extends SliderTrackShape {
  HueTrackShape();

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool? isEnabled,
    bool? isDiscrete,
  }) {
    final thumbWidth = sliderTheme.thumbShape
            ?.getPreferredSize(isEnabled ?? false, isDiscrete ?? false)
            .width ??
        0;
    return Rect.fromLTWH(
      offset.dx + thumbWidth / 2,
      offset.dy,
      parentBox.size.width - thumbWidth,
      parentBox.size.height,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool? isEnabled,
    bool? isDiscrete,
    required TextDirection textDirection,
  }) {
    final rect = Rect.fromLTWH(
      offset.dx,
      offset.dy,
      parentBox.size.width,
      parentBox.size.height,
    );
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color(0xFFFF0000),
          Color(0xFFFFFF00),
          Color(0xFF00FF00),
          Color(0xFF00FFFF),
          Color(0xFF0000FF),
          Color(0xFFFF00FF),
          Color(0xFFFF0000),
        ],
      ).createShader(rect);

    context.canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(4)),
      paint,
    );
  }
}

class TwoGradientTrackShape extends SliderTrackShape {
  TwoGradientTrackShape({required this.leftColor, required this.rightColor});

  final Color leftColor;
  final Color rightColor;

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool? isEnabled,
    bool? isDiscrete,
  }) {
    final thumbWidth = sliderTheme.thumbShape
            ?.getPreferredSize(isEnabled ?? false, isDiscrete ?? false)
            .width ??
        0;
    return Rect.fromLTWH(
      offset.dx + thumbWidth / 2,
      offset.dy,
      parentBox.size.width - thumbWidth,
      parentBox.size.height,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool? isEnabled,
    bool? isDiscrete,
    required TextDirection textDirection,
  }) {
    final rect = Rect.fromLTWH(
      offset.dx,
      offset.dy,
      parentBox.size.width,
      parentBox.size.height,
    );
    final paint = Paint()
      ..shader =
          LinearGradient(colors: [leftColor, rightColor]).createShader(rect);

    context.canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(4)),
      paint,
    );
  }
}
