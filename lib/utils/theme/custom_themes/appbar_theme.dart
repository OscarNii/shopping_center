// ignore: file_names
import 'package:flutter/material.dart';
import 'package:shopping_center/utils/constants/sizes.dart';

class TAppBarTheme {
  TAppBarTheme._();

  ///Light AppBar Theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: TSizes.mdIcon),
    actionsIconTheme: IconThemeData(color: Colors.black, size: TSizes.mdIcon),
    titleTextStyle: TextStyle(
        color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.0),
  );

  ///Dark AppBar Theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
        color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
  );
}
