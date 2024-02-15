import 'package:flutter/material.dart';

abstract class CCTextStyle {
  static const bold = TextStyle(fontWeight: FontWeight.bold);

  static TextStyle? bodyLarge(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge;

  static TextStyle? titleSmall(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall;

  static TextStyle? titleMedium(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium;

  static TextStyle? titleLarge(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge;
}
