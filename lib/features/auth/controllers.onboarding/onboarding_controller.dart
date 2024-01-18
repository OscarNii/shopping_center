// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:shopping_center/utils/constants/text_strings.dart";
import "package:shopping_center/utils/device/device_util.dart";
import "package:shopping_center/utils/helpers/helpers_functions.dart";
import 'dart:js';



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
            children: const [
              OnBoardingPage(
                image: TImages.onboardingImage1,
                title: TTexts.onboardingTitle1,
                subtitle: TTexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage2,
                title: TTexts.onboardingTitle2,
                subtitle: TTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onboardingImage3,
                title: TTexts.onboardingTitle3,
                subtitle: TTexts.onboardingSubTitle3,
              ),
            ],
          ),
          Positioned(
              top: TDeviceUtils.getAppBarHeight(),
              right: TSizes.defaultSpace,
              child: TextButton(
                onPressed: () {},
                child: Text("skip"),
              ))
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: TSizes.spaceBtwnItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
