import 'package:flutter/material.dart';
import 'package:shopping_center/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.2),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );
  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.2),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );
}
