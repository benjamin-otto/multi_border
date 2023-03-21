import 'package:flutter/widgets.dart';

import 'mb_border.dart';

extension MBBorderListX on List<MBBorder> {
  /// Adds the widths of all borders together.
  double get totalWidth => fold(0, (prev, border) => prev + border.width);
}

extension RadiusX on Radius {
  /// Adds [radius] to non-zero radii.
  Radius accrueRounded(double radius) =>
      this == Radius.zero ? this : this + Radius.circular(radius);
}
