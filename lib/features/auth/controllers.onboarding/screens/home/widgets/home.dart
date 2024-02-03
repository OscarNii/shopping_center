// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_center/common/style/widgets/containers/tcontainer.dart';
import 'package:shopping_center/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: TColors.primary,
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                      top: -150,
                      right: -250,
                      child: TContainer(
                          backgroundColor: TColors.textWhite.withOpacity(0.1))),
                  Positioned(
                      top: 100,
                      right: -300,
                      child: TContainer(
                          backgroundColor: TColors.textWhite.withOpacity(0.1))),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
