import 'package:flutter/material.dart';

import 'extensions.dart';
import 'mb_border.dart';
import 'multi_border_painter.dart';
import 'shortest_side_clipper.dart';

class MultiBorder extends StatelessWidget {
  const MultiBorder({
    super.key,
    required this.borders,
    required this.child,
    this.shape = BoxShape.rectangle,
    this.innerRadius = BorderRadius.zero,
  })  : assert(borders.length > 0),
        assert(shape == BoxShape.rectangle || innerRadius == BorderRadius.zero,
            'BoxShape.circle [shape] does not need a [borderRadius]');

  factory MultiBorder.evenBorders({
    required List<Color> colors,
    required Widget child,
    double width = 1.0,
    BoxShape shape = BoxShape.rectangle,
    BorderRadius innerRadius = BorderRadius.zero,
  }) {
    return MultiBorder(
      shape: shape,
      innerRadius: innerRadius,
      borders: colors.fold(
        <MBBorder>[],
        (borders, color) => borders..add(MBBorder(color: color, width: width)),
      ),
      child: child,
    );
  }

  final List<MBBorder> borders;
  final Widget child;
  final BoxShape shape;
  final BorderRadius innerRadius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: MultiBorderPainter(
        shape: shape,
        borders: borders,
        innerRadius: innerRadius,
      ),
      child: Padding(
        padding: EdgeInsets.all(borders.totalWidth),
        child: _clippedChild,
      ),
    );
  }

  Widget get _clippedChild {
    switch (shape) {
      case BoxShape.rectangle:
        return ClipRRect(
          borderRadius: innerRadius,
          child: child,
        );
      case BoxShape.circle:
        return ClipOval(
          clipper: ShortestSideClipper(),
          child: child,
        );
    }
  }
}
