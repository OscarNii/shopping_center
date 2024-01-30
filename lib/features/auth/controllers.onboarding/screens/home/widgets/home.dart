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
                Container(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
