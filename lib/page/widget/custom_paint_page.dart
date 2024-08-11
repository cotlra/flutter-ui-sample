import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../common/base_frame.dart';

class CustomPaintPage extends StatefulWidget {
  const CustomPaintPage({super.key, required this.title});

  final String title;

  @override
  State<CustomPaintPage> createState() => _CustomPaintPageState();
}

class _CustomPaintPageState extends State<CustomPaintPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseFrame(
      title: widget.title,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              _canvas(
                child: CustomPaint(
                  painter: RectPainter(
                    color: theme.primaryColor,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: CirclePainter(
                    color: theme.primaryColor,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: PathCombinePainter(
                    color: theme.primaryColor,
                    operation: PathOperation.union,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: PathCombinePainter(
                    color: theme.primaryColor,
                    operation: PathOperation.intersect,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: PathCombinePainter(
                    color: theme.primaryColor,
                    operation: PathOperation.xor,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: PathCombinePainter(
                    color: theme.primaryColor,
                    operation: PathOperation.difference,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: PathCombinePainter(
                    color: theme.primaryColor,
                    operation: PathOperation.reverseDifference,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: LinePainter(
                    color: theme.primaryColor,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: PathPainter(
                    color: theme.primaryColor,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: MyTextPainter(
                    color: theme.primaryColor,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: PointPainter(
                    color: theme.primaryColor,
                  ),
                ),
              ),
              _canvas(
                child: CustomPaint(
                  painter: RotatePainter(
                    color: theme.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _canvas({CustomPaint? child}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Theme.of(context).colorScheme.primaryContainer,
      width: 208,
      height: 208,
      child: child,
    );
  }
}

class RectPainter extends CustomPainter {
  RectPainter({super.repaint, required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final rect = const Offset(20, 20) & Size(size.width - 40, size.height - 40);
    // var rect2 = Rect.fromLTWH(20, 20, size.width - 40, size.height - 20);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  CirclePainter({super.repaint, required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width * 0.4,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PathCombinePainter extends CustomPainter {
  PathCombinePainter({
    super.repaint,
    required this.operation,
    required this.color,
  });
  final PathOperation operation;
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path1 = Path();
    final rect1 = Rect.fromCenter(
      center: Offset(size.width / 2 - 30, size.height / 2),
      height: size.height / 2,
      width: size.width / 2,
    );
    path1.addArc(rect1, 0, pi * 2);

    final path2 = Path();
    final rect2 = Rect.fromCenter(
      center: Offset(size.width / 2 + 30, size.height / 2),
      height: size.height / 2,
      width: size.height / 2,
    );
    path2.addArc(rect2, 0, pi * 2);

    final path = Path.combine(operation, path1, path2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class LinePainter extends CustomPainter {
  LinePainter({super.repaint, required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 4;
    canvas.drawLine(
      const Offset(10, 10),
      Offset(size.width - 10, size.height - 10),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PathPainter extends CustomPainter {
  PathPainter({super.repaint, required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4;
    final path = Path()
      ..moveTo(10, 10)
      ..lineTo(20, 20)
      ..lineTo(150, 50)
      ..lineTo(20, 80)
      ..lineTo(20, 80)
      ..lineTo(size.width - 10, size.height - 10);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyTextPainter extends CustomPainter {
  MyTextPainter({super.repaint, required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    TextPainter(
      text: TextSpan(
        text: 'Text',
        style: TextStyle(color: color),
      ),
      textDirection: TextDirection.ltr,
    )
      ..layout()
      ..paint(canvas, Offset(size.width / 2, size.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PointPainter extends CustomPainter {
  PointPainter({super.repaint, required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 10;
    canvas.drawPoints(
      PointMode.points,
      const [Offset(20, 20), Offset(40, 40), Offset(60, 60), Offset(80, 80)],
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class RotatePainter extends CustomPainter {
  RotatePainter({super.repaint, required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 5;
    const count = 12;
    canvas
      ..save()
      ..translate(size.width / 2, size.height / 2);
    for (var i = 0; i < count; i++) {
      const step = 2 * pi / count;
      canvas
        ..drawLine(
          const Offset(40, 0),
          Offset(size.height / 2 - 20, 0),
          paint,
        )
        // キャンパスを回転する
        ..rotate(step);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
