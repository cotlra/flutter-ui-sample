import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class ColorSliderPage extends StatefulWidget {
  const ColorSliderPage({super.key, required this.title});

  final String title;

  @override
  State<ColorSliderPage> createState() => _ColorSliderPageState();
}

class _ColorSliderPageState extends State<ColorSliderPage> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return BaseFrame(
      title: widget.title,
      children: [
        SliderTheme(
          data: SliderThemeData(
            thumbShape: MyThumbShape(
              value: _value,
              backgroundColor: Color(0xff000000 + (_value.round() << 4 * 4)),
            ),
            trackShape: MyTrackShape(
              leftColor: Color(0xff000000),
              rightColor: Color(0xffff0000),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: _value,
              max: 255,
              onChanged: (double value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MyThumbShape extends SliderComponentShape {
  MyThumbShape({required this.value, required this.backgroundColor});

  final double value;
  final Color backgroundColor;
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(44, 44);
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
    var paint1 = Paint()..color = Colors.white;
    var paint2 = Paint()..color = backgroundColor;
    var textPainter = TextPainter(
      text: TextSpan(
          text: this.value.round().toString(),
          style: TextStyle(
            color: Colors.black,
          )),
      textDirection: textDirection,
    );
    context.canvas.drawCircle(center, 22, paint2);
    context.canvas.drawCircle(center, 18, paint1);
    textPainter.layout();
    textPainter.paint(
      context.canvas,
      Offset(
        center.dx - textPainter.size.width / 2,
        center.dy - textPainter.size.height / 2,
      ),
    );
  }
}

class MyTrackShape extends SliderTrackShape {
  MyTrackShape({required this.leftColor, required this.rightColor});

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
    var thumbWidth = sliderTheme.thumbShape
            ?.getPreferredSize(isEnabled ?? false, isDiscrete ?? false)
            .width ??
        0;
    return Rect.fromLTWH(offset.dx + thumbWidth / 2, offset.dy,
        parentBox.size.width - thumbWidth, parentBox.size.height);
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
    var rect = Rect.fromLTWH(
        offset.dx, offset.dy, parentBox.size.width, parentBox.size.height);
    var paint = Paint()
      ..shader =
          LinearGradient(colors: [leftColor, rightColor]).createShader(rect);

    context.canvas
        .drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(4)), paint);
  }
}
