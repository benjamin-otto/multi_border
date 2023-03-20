import 'package:flutter/widgets.dart';

import 'mb_border.dart';

extension MBBorderListX on List<MBBorder> {
  double get totalWidth => fold(0, (prev, border) => prev + border.width);
}

extension RadiusX on Radius {
  Radius add(double radius) =>
      this == Radius.zero ? this : this + Radius.circular(radius);
}
