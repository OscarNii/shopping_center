import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightThemeTextTheme = TextTheme(
    ///headlineLarge
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),

    /// titleLarge
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),

    /// bodyLarge
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodyMedium: const TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall:  TextStyle(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.5)),

    /// labelLarge
    labelLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),

    /// labelMedium
    labelMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),
  );



///dark Theme
  static TextTheme darkThemeTextTheme =  TextTheme(
        headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),

    /// titleLarge
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),

    /// bodyLarge
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodyMedium: const TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: const TextStyle(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),

    /// labelLarge
    labelLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),

    // labelMedium
    labelMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
  );
}
