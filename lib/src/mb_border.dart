import 'package:flutter/material.dart';

class MBBorder {
  MBBorder({
    this.color = Colors.black,
    this.width = 1.0,
  }) : assert(width > 0);

  final Color color;
  final double width;
}
