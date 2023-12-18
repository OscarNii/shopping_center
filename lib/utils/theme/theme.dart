import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    // colorScheme: const ColorScheme.light(),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    // colorScheme: const ColorScheme.dark(),
  );
    
}