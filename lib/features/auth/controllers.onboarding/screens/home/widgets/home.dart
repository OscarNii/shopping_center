// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_center/banners/bannersImages.dart';
import 'package:shopping_center/common/style/widgets/appbar/appbar.dart';
import 'package:shopping_center/common/style/widgets/containers/circular_container.dart';
import 'package:shopping_center/common/style/widgets/containers/tPrimaryheader.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/home/widgets/controller.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      Slidecontroller(),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: TPrimaryHeader(
                child: Column(
                  children: [TAppBar()],
            //Having some errors on ths appBar, 
          //later i will work on it or probably change my design on it 
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, _) => controller.changeIndex(index),
                  ),
                  items: const [
                    TBanner1(imageUrl: TImages.carousel3),
                    TBanner1(imageUrl: TImages.carousel4),
                    TBanner1(imageUrl: TImages.carousel5),
                    TBanner1(imageUrl: TImages.carousel1),
                  ],
                )),
            SizedBox(height: TSizes.spaceBtwnItems),
            Center(
              child: Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0;
                        i < 4;
                        i++) //this function will run 4 times to avoid the repeated TCircularContainer

                      TCircularContainer(
                          width: 20,
                          height: 4,
                          margin: EdgeInsets.only(right: 10),
                          backgroundColor: controller.currentIndex.value == i
                              ? TColors.primary
                              : TColors.grey.withOpacity(0.1),
                          radius: 4),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
