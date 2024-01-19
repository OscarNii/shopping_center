// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/styles_spacings.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';

import '../../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children:  [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
                  )
                ],
              )
            ],
          ),
        ),
        
      ),
    );
  }
}
