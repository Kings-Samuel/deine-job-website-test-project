import 'package:arrow_path/arrow_path.dart';
import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// The arrows usually looks better with rounded caps.
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 3.0;

    /// Draw a single arrow.
    {
      Path path = Path();
      path.moveTo(40, 0);
      path.relativeCubicTo(0, 0, size.height * 0.25, 50, size.height * 0.5, 0);
      path = ArrowPath.make(path: path);
      canvas.drawPath(path, paint..color = Colors.blue);
    }
  }

  @override
  bool shouldRepaint(ArrowPainter oldDelegate) => false;
}
