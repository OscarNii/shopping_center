// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/common/style/styles_spacings.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/constants/text_strings.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
//later i will commits to the project for better navigation 

//
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.darkAppLogo : TImages.lightAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spaceBtwnSections),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwnInputField / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text(TTexts.rememberMe),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(TTexts.forgetPassword),
                          )
                        ],
                      ),
                      SizedBox(height: TSizes.spaceBtwnSections),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {}, child: Text(TTexts.signIn))),
                      SizedBox(height: TSizes.spaceBtwnItems),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text(TTexts.createAccount))),
                      // SizedBox(height: TSizes.spaceBtwnSections),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 1,
                        indent: 60,
                        endIndent: 5),
                  ),
                  Text(TTexts.orSiginWith.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                    child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 1,
                        indent: 5,
                        endIndent: 60),
                  ),
                ],
              ),
              SizedBox(height: TSizes.spaceBtwnSections),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: Image(
                      width: TSizes.md,
                      height: TSizes.md,
                      image: AssetImage(TImages.googleLogo),
                    ),
                  ),
                  SizedBox(width: TSizes.spaceBtwnItems),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(250)),
                    child: Image(
                      width: TSizes.md,
                      height: TSizes.md,
                      image: AssetImage(TImages.facebookLogo),
                    ),
                  ),
                  SizedBox(width: TSizes.spaceBtwnItems),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(250)),
                    child: Image(
                      width: TSizes.md,
                      height: TSizes.md,
                      image: AssetImage(TImages.githubLogo),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
