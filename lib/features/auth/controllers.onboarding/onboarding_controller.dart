// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:shopping_center/utils/constants/text_strings.dart";
import "package:shopping_center/utils/helpers/helpers_functions.dart";

import "../../../utils/constants/image_strings.dart";
import "../../../utils/constants/sizes.dart";

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: THelperFunctions.screenWidth() * 0.8,
                    height: THelperFunctions.screenHeight() * 0.5,
                    image: const AssetImage(TImages.onboardingImage2),
                  ),
                  Text(
                    TTexts.onboardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: TSizes.spaceBtwnItems),
                  Text(
                    TTexts.onboardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
