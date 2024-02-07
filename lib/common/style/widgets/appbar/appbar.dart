// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_center/utils/constants/sizes.dart';
import 'package:shopping_center/utils/device/device_util.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({super.key, this.title, this.leadingIcon, this.actions, this.leadingOnPress, this.showBackArrow = true,});

final Widget? title;
final Widget? leadingIcon;
final List<Widget>? actions;
final bool? showBackArrow;
final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.md,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: ,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        TDeviceUtils.getAppBarHeight(),
      );
}
