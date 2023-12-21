import 'package:flutter/material.dart';
import 'package:shopping_center/utils/theme/custom_themes/appBar_theme.dart';
import 'package:shopping_center/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shopping_center/utils/theme/custom_themes/chip_theme.dart';
import 'package:shopping_center/utils/theme/custom_themes/text_field_theme.dart';
import 'package:shopping_center/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/buttom_sheet_theme.dart';
import 'custom_themes/outline_buttom_theme.dart';

class TAppTheme {
  TAppTheme._();

  ///Light Theme
  /////
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: const ElevatedButtonThemeData(),
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightTextFormFieldTheme,
    textTheme: TTextTheme.lightThemeTextTheme,
  );


///Dark Theme
////
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: const ElevatedButtonThemeData(),
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkTextFormFieldTheme,
    textTheme: TTextTheme.darkThemeTextTheme,
    
  );
}
