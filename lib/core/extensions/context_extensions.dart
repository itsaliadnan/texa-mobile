import 'package:flutter/material.dart';

extension BuildContextThemeExtensions on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension IQD on String {
  String get iqd => "$this IQD";
}
