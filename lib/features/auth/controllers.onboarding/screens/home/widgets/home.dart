// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
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
            child: Stack(
              children: [
                TContainer(),
                
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class TContainer extends StatelessWidget {
  const TContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.background = TColors.light,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: TColors.textWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
