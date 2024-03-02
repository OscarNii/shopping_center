import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/banners/bannersImages.dart';
import 'package:shopping_center/common/shadow/shadow_style.dart';
import 'package:shopping_center/round_container/round_Containers.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
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
          TRcontainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.darkGrey : TColors.light,
            child: Stack(
              children: [
                const TBanner1(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                  width: 170,
                  height: 120,
                ),
                Positioned(
                  left: 3,
                  child: TRcontainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('15%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.dark)),
                  ),
                ),
                const TCircularIcon(
                  icon: Iconsax.heart,
                  color: Colors.red,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.onPressed,
    this.size = TSizes.lg,
    this.color,
    this.backgroundColor,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  // final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunctions.isDarkMode(context)
                  ? TColors.dark.withOpacity(0.8)
                  : TColors.light.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
