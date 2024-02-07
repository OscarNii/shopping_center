// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/utils/constants/sizes.dart';
import 'package:shopping_center/utils/device/device_util.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = true,
  });

  final Widget? title;
  final Widget? leadingIcon;
  final List<Widget>? actions;
  final bool? showBackArrow;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.md,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow!
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null ? IconButton(
                onPressed: leadingOnPressed,
                icon: Icon(leadingIcon as IconData?)) : null,
                title: title,
        actions: actions,
        elevation: 0,

      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        TDeviceUtils.getAppBarHeight(),
      );
}
