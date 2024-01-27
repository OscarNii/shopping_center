// ignore_for_file: prefer_const_constructors

import "package:animate_do/animate_do.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:shopping_center/utils/constants/colors.dart";
import "package:shopping_center/utils/constants/text_strings.dart";
import "package:shopping_center/utils/device/device_util.dart";
import "package:shopping_center/utils/helpers/helpers_functions.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

import "../../../utils/constants/image_strings.dart";
import "../../../utils/constants/sizes.dart";
import "screens/onboarding.dart";

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: FadeInDown(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
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
            OnBoardingSkip(),
            OnBoardingNavigation(),
            OnBoardingNextBttn()
          ],
        ),
      ),
    );
  }
}

class OnBoardingNextBttn extends StatelessWidget {
  const OnBoardingNextBttn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? TColors.primaryColor : TColors.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.doNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            dotHeight: 6,
            dotWidth: 16,
            activeDotColor: dark ? TColors.light : TColors.dark),
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: Text("skip"),
        ));
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
