// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/login/sucess_screen.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/constants/sizes.dart';
import 'package:shopping_center/utils/constants/text_strings.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';

import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: FadeInDown(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                Image(
                  image: AssetImage(TImages.verifyImg),
                  width: THelperFunctions.screenWidth() * 0.7,
                ),
                SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
                Text(
                  TTexts.verifyEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
                Text(
                  "support@oscacorp.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
                Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const SuccessScreen()),
                      child: Text(TTexts.tcontinue)),
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: Text(TTexts.resendEmail)),
                ),
              ],
            )),
      ),
    );
  }
}
