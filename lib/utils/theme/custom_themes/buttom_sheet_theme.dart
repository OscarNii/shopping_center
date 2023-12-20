import 'package:flutter/material.dart';

class TBottomSheetTheme {
  /// Light BottomSheetTheme
  ///
  TBottomSheetTheme._();
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.white,
      modalBackgroundColor: Colors.white,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ));

  ///Dark BottomSheetTheme
  ///
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(maxWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
  );
}
