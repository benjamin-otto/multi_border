import 'package:flutter/material.dart';

/// Describes a single [MultiBorder] border.
class MBBorder {
  MBBorder({
    this.color = Colors.black,
    this.width = 1.0,
  }) : assert(width > 0);

  /// Color of the border.
  final Color color;

  /// Width of the border.
  final double width;
}
