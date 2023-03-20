import 'package:flutter/widgets.dart';

class ShortestSideClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final offset = (size.longestSide - size.shortestSide) / 2;
    final left = (size.width == size.shortestSide) ? 0.0 : offset;
    final top = (size.height == size.shortestSide) ? 0.0 : offset;
    return Rect.fromLTWH(left, top, size.shortestSide, size.shortestSide);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
