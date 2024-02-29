import 'package:flutter/material.dart';
import 'package:shopping_center/common/shadow/shadow_style.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/constants/sizes.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';

class TCardsProducts extends StatelessWidget {
  const TCardsProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productItemRadius),
        color: dark ? TColors.darkGrey : TColors.light,
      ),
      child: Column(
        children: [
          
        ],
      ),
    );
  }
}
