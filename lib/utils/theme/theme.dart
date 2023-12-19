import 'package:flutter/material.dart';
import 'package:shopping_center/utils/theme/custom_themes/elevated_bottom_theme.dart';
import 'package:shopping_center/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.lightThemeTextTheme,
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: const ElevatedButtonThemeData()
      
      );
      

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkThemeTextTheme,
    scaffoldBackgroundColor: Colors.white,
  );
}
