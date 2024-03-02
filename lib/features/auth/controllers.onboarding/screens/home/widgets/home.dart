// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_center/banners/bannersImages.dart';
import 'package:shopping_center/card/card_products.dart';
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
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    viewportFraction: 0.8,
                    aspectRatio: 1.0,
                    height: 190,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, _) => controller.changeIndex(index),
                  ),
                  items: const [
                    TBanner1(imageUrl: TImages.carousel3),
                    TBanner1(imageUrl: TImages.carousel4),
                    TBanner1(imageUrl: TImages.carousel5),
                    TBanner1(imageUrl: TImages.carousel1),
                  ],
                )),
            const SizedBox(width: TSizes.spaceBtwnItems),
            SizedBox(height: TSizes.spaceBtwnItems),
            TCardsProducts(),
          ],
        ),
      ),
    );
  }
}
