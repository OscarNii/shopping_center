// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/utils/constants/sizes.dart';

import '../../../../../utils/constants/text_strings.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text(TTexts.signInTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: TSizes.spaceBtwnSections),
              Form(
                  child: Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: TTexts.firstName,
                      )),
                    ),
                    SizedBox(width: TSizes.spaceBtwnItems),
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: TTexts.lastName,
                      )),
                    )
                  ]),
                  SizedBox(height: TSizes.spaceBtwnInputField),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.userName,
                  )),
                  SizedBox(height: TSizes.spaceBtwnInputField),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct),
                    labelText: TTexts.email,
                  )),
                  SizedBox(height: TSizes.spaceBtwnInputField),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.call),
                    labelText: TTexts.phoneNo,
                  )),
                  SizedBox(height: TSizes.spaceBtwnInputField),
                  TextFormField(
                      decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: TTexts.password,
                  )),
                ],
              ))
            ],
          ),
        )));
  }
}
