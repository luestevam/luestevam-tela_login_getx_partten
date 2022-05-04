// ignore_for_file: camel_case_extensions

import 'package:flutter/material.dart';

extension themeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  Color get buttonColor => Theme.of(this).buttonColor;
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle get TitleStyle =>
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey);
}