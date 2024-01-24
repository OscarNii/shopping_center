// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_center/utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Verify Email'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
      ),
    );
  }
}
