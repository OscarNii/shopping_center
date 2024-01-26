import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/login/login.dart';

import '../../../../../common/style/styles_spacings.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helpers_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: const AssetImage(TImages.successmail),
                width: THelperFunctions.screenWidth() * 0.7,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              Text(
                TTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwnItems),
              const SizedBox(height: TSizes.spaceBtwnItems),
              Text(
                TTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwnItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(TTexts.tcontinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
