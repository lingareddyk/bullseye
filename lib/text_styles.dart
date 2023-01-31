import 'package:flutter/material.dart';

class LabelTextStyle {
  static TextStyle? bodyText(BuildContext buildContext) {
    return Theme.of(buildContext).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 12.0,
          color: Colors.black,
          letterSpacing: 2.0,
        );
  }
}
