import 'package:flutter/material.dart';

extension SoriyaWidgetExtension on Widget {
  Widget margin([EdgeInsets? margin]) {
    return Container(
      margin: margin,
      child: this,
    );
  }

  Widget marginSym({double? horizontal, double? verticle}) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: horizontal ?? 0, vertical: verticle ?? 0),
    );
  }
}
