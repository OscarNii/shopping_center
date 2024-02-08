// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/appbar/appbar.dart';
import 'package:shopping_center/common/style/widgets/tcontainers_header.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TContainerHeader(
              child: Column(
            children: [
              TAppBar(
                title: Column(
                  children: [
                    Text(
                      TTexts.homeAppBarTitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: TColors.grey),
                    ),
                    Text(TTexts.homeAppBarSubTitle),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    ));
  }
}
