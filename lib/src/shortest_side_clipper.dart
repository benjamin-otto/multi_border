import 'package:flutter/widgets.dart';

/// Clips from a square based on the shortest side and centered.
///
/// Used for clipping perfect circles for a [MultiBorder]
/// with a [shape] of [BoxShape.circle]
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
