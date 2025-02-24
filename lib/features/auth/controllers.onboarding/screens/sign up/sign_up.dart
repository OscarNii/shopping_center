// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/common/StringValidation/string_validation.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/login/login.dart';
import 'package:shopping_center/main.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/constants/sizes.dart';
import 'package:shopping_center/utils/constants/text_strings.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isChecked = false;
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _emailController.dispose();
    _phoneNoController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> signUp() async {
    try {
      if (!_isChecked) {
        Get.snackbar(
          'Agreement Required',
          'Please accept the terms and conditions',
          backgroundColor: TColors.light,
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      final AuthResponse response = await supabase.auth.signUp(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
        data: {
          'username': _userNameController.text.trim(),
          'firstname': _firstNameController.text.trim(),
          'lastname': _lastNameController.text.trim(),
        },
      );

      if (response.user != null) {
        Get.snackbar(
          'Success',
          'Account created successfully! Please verify your email.',
          backgroundColor: TColors.light,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.to(() => const LoginScreen());
      }
    } on AuthException catch (error) {
      Get.snackbar(
        'Sign Up Failed',
        error.message,
        backgroundColor: TColors.light,
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (error) {
      Get.snackbar(
        'Error',
        'An unexpected error occurred. Please try again.',
        backgroundColor: TColors.light,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        toolbarHeight: 82,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () => Get.back(),
          color: dark ? TColors.light : TColors.dark,
        ),
        title: const Text('Sign Up'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: dark ? TColors.dark : TColors.light,
        foregroundColor: dark ? TColors.dark : TColors.light,
      ),
      body: FadeInDown(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(TTexts.signInTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(height: TSizes.spaceBtwnSections),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(children: [
                        Expanded(
                          child: TextFormField(
                            validator: StringValidation.firstName,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            controller: _firstNameController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TTexts.firstName,
                            ),
                          ),
                        ),
                        SizedBox(width: TSizes.spaceBtwnItems),
                        Expanded(
                          child: TextFormField(
                            validator: StringValidation.lastName,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            controller: _lastNameController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TTexts.lastName,
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        validator: StringValidation.userName,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        controller: _userNameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.user),
                          labelText: TTexts.userName,
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        validator: StringValidation.email,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct),
                          labelText: TTexts.email,
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        // validator: StringValidation.phone,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        // controller: _phoneNoController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.call),
                          labelText: TTexts.phoneNo,
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        validator: StringValidation.password,
                        textInputAction: TextInputAction.next,
                        controller: _passwordController,
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Iconsax.eye
                                  : Iconsax.eye_slash,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              },
                            ),
                          ),
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
                                        color:
                                            dark ? TColors.grey : TColors.blue,
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
                                        color:
                                            dark ? TColors.grey : TColors.blue,
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
                            backgroundColor: TColors.dark,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await signUp();
                            }
                          },
                          child: const Text(TTexts.createAccount,
                              style: TextStyle(color: TColors.light)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
