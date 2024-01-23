// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/utils/constants/sizes.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TTexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash5),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwnInputField),
                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {})),
                      SizedBox(width: TSizes.spaceBtwnItems),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: "${TTexts.iAgreeTo} ",
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: "${TTexts.privacyPolicy} ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                    color: dark ? TColors.grey : TColors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? TColors.grey : TColors.blue,
                                  )),
                          TextSpan(
                              text: "${TTexts.and} ",
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: TTexts.termsOfUse,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                    color: dark ? TColors.grey : TColors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? TColors.grey : TColors.blue,
                                  )),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwnSections),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: TColors.light,
                          backgroundColor: TColors.blue,
                        ),
                        onPressed: () {},
                        child: const Text(TTexts.createAccount),
                      ))
                ],
              ))
            ],
          ),
        )));
  }
}
