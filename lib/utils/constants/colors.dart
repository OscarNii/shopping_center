// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //App Basic Colors
  static Color primaryColor = Color.fromARGB(255, 13, 87, 161);
  static const Color secondaryColor = Color.fromARGB(255, 211, 187, 32);
  static const Color accentColor = Color.fromARGB(255, 129, 159, 163);

  //Text Colors
  static const Color primaryTextColor = Color.fromARGB(255, 10, 10, 11);
  static const Color secondaryTextColor = Color.fromARGB(41, 134, 143, 151);
  static const Color textWhite = Color.fromARGB(255, 255, 255, 255);

  //Background Colors
  static const Color light = Color.fromARGB(255, 255, 255, 255);
  static const Color dark = Color.fromARGB(255, 0, 0, 0);
  static const Color primaryBackground = Color.fromARGB(255, 255, 255, 255);

  ///Background Container Colors
  static const Color lightContainer = Color.fromARGB(255, 255, 255, 255);
  static Color darkContainer = Colors.white.withOpacity(0.5);

  //Button Colors
  static const Color primaryButton = Color.fromARGB(255, 13, 87, 161);
  static const Color secondaryButton = Color.fromARGB(114, 38, 37, 29);

  //Border Colors
  static const Color primaryBorder = Color.fromARGB(255, 158, 158, 158);
  static const Color secondaryBorder = Color.fromARGB(255, 158, 158, 158);

//Error or Validation Colors
  static const Color errorColor = Color.fromARGB(255, 161, 13, 13);
  static const Color successColor = Color.fromARGB(255, 58, 130, 3);
  static  const Color warningColor = Color.fromARGB(255, 244, 212, 0);
  static const Color infoColor = Color.fromARGB(255, 0, 47, 236);

}
