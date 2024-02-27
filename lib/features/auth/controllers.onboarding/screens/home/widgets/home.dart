// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_center/banners/bannersImages.dart';
import 'package:shopping_center/common/style/widgets/appbar/appbar.dart';
import 'package:shopping_center/common/style/widgets/containers/tPrimaryheader.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: TPrimaryHeader(
              child: Column(
                children: [TAppBar()],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                ),
                items: const [
                  TBanner1(imageUrl: TImages.carousel3),
                  TBanner1(imageUrl: TImages.carousel4),
                  TBanner1(imageUrl: TImages.carousel5),
                  TBanner1(imageUrl: TImages.carousel1),
                ],
              ))
        ],
      ),
    );
  }
}
