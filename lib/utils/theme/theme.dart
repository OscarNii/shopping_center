import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    colorScheme: const ColorScheme.light(),
  );
    
}