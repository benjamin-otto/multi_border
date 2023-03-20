import 'package:flutter/widgets.dart';

import 'mb_border.dart';
import 'extensions.dart';

class MultiBorderPainter extends CustomPainter {
  MultiBorderPainter({
    required this.shape,
    required this.borders,
    required this.innerRadius,
  });

  final BoxShape shape;
  final List<MBBorder> borders;
  final BorderRadius innerRadius;

  @override
  void paint(Canvas canvas, Size size) {
    switch (shape) {
      case BoxShape.rectangle:
        _drawRectangleBorders(canvas, size);
        break;
      case BoxShape.circle:
        _drawCircleBorders(canvas, size);
        break;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void _drawRectangleBorders(Canvas canvas, Size size) {
    double totalWidth = borders.totalWidth;
    double widthToPaint = borders.totalWidth;

    for (MBBorder border in borders) {
      final halfBorderWidth = border.width / 2;
      final offset = widthToPaint - halfBorderWidth;
      final painted = totalWidth - widthToPaint;
      final additionalRadius = painted + halfBorderWidth;

      final rrectBorder = RRect.fromLTRBAndCorners(
        offset,
        offset,
        size.width - offset,
        size.height - offset,
        topLeft: innerRadius.topLeft.add(additionalRadius),
        topRight: innerRadius.topRight.add(additionalRadius),
        bottomLeft: innerRadius.bottomLeft.add(additionalRadius),
        bottomRight: innerRadius.bottomRight.add(additionalRadius),
      );

      final paint = Paint()
        ..color = border.color
        ..strokeWidth = border.width
        ..style = PaintingStyle.stroke;

      canvas.drawRRect(rrectBorder, paint);
      widthToPaint -= border.width;
    }
  }

  void _drawCircleBorders(Canvas canvas, Size size) {
    double widthToPaint = borders.totalWidth;

    for (MBBorder border in borders) {
      final paint = Paint()
        ..color = border.color
        ..strokeWidth = border.width
        ..style = PaintingStyle.stroke;

      canvas.drawCircle(
        Offset(size.width / 2, size.height / 2),
        (size.shortestSide / 2) + (border.width / 2) - widthToPaint,
        paint,
      );

      widthToPaint -= border.width;
    }
  }
}
