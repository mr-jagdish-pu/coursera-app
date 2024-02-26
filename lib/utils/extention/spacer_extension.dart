import 'package:flutter/cupertino.dart';

extension Spacer on num {
  SizedBox get spacerH => SizedBox(height: this.toDouble());
  SizedBox get spacerW => SizedBox(width: this.toDouble());
}
