import 'package:flutter/material.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/constants/sizes.dart';

class TRcontainer extends StatelessWidget {
  const TRcontainer({
    super.key,
    this.child,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.showBorder = true,
    this.backgroundColor = TColors.light,
    this.borderColor = TColors.primary,
    this.radius = TSizes.cardRadiusLg,
  });

  final double? width;
  final double? height;
  final double radius;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
