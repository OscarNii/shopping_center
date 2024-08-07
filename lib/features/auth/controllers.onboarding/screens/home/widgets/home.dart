// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shopping_center/DetailsHome/Cslider.dart';
import 'package:shopping_center/DetailsHome/detailHome.dart';
import 'package:shopping_center/banners/bannersImages.dart';
import 'package:shopping_center/card/card_products.dart';
import 'package:shopping_center/common/style/widgets/appbar/appbar.dart';
import 'package:shopping_center/common/style/widgets/containers/circular_container.dart';
import 'package:shopping_center/common/style/widgets/containers/tPrimaryheader.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/home/widgets/controller.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/constants/sizes.dart';

import '../../../../../../DetailsHome/List1.dart';
import '../../../../../../DetailsHome/List2.dart';
import '../../../../../../DetailsHome/List3.dart';
import '../../../../../../DetailsHome/List4.dart';

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
              child: Column(
                children: [
                  AppBar(
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.notification_1_bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.setting_2_bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.user_add_bold),
                      ),
                    ],
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Search for Item In Shop",
                      labelStyle: TextStyle(color: Colors.white),
                      // filled: true,
                      fillColor: TColors.textWhite,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      prefixIcon: Icon(
                        Icons.search_off_rounded,
                        color: Colors.white,
                      ),
                      hintMaxLines: 4,
                    ),
                  ),
                ],
                //Having some errors on ths appBar,
                //later i will work on it or probably change my design on it
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Cslider(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favorite Hotels Nearby",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20,
                      child: Icon(
                        EvaIcons.trending_up_outline,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Center(
              child: Container(
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: ListWheelScrollView(
                  itemExtent: 360,
                  diameterRatio: 3.0,
                  squeeze: 1.10,
                  children: [
                    List4(),
                    List1(),
                    List2(),
                    List3(),
                    List4(),
                    List2(),
                    List3(),
                    List4(),
                    List2(),
                    List3(),
                    List1(),
                    List2(),
                  ],
                ),
              ),
            ),
            // TCardsProducts(),
          ],
        ),
      ),
    );
  }
}
