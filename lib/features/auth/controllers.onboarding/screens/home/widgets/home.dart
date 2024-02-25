// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/appbar/appbar.dart';
import 'package:shopping_center/common/style/widgets/containers/tPrimaryheader.dart';
import 'package:shopping_center/utils/constants/colors.dart';
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
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSizes.md),
                  border: Border.all(color: TColors.grey)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(TSizes.md),
                child: const Image(
                  image: AssetImage(TImages.carousel4),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
