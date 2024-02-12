//find the height of the screen without context

import 'package:flutter/material.dart';
extension ResponsiveValue on num {
  static final view = WidgetsBinding.instance.platformDispatcher.views.first;
  static final width1 = MediaQueryData.fromView(view).size.width;
  static const double _widthToUse = 392;


  double get w => (width1 < 600)? this * (width1 / _widthToUse):toDouble();
  double get ts => this * (width1 / _widthToUse);
}