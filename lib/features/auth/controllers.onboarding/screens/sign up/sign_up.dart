// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/main.dart';
import 'package:shopping_center/utils/constants/sizes.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'verify_email.dart';


final _formKey = GlobalKey<FormState>();
final _firstNameController = TextEditingController();
final _lastNameController = TextEditingController();
final _userNameController = TextEditingController();
final _emailController = TextEditingController();
final _phoneNoController = TextEditingController();
final _passwordController = TextEditingController();
class SignUP extends StatelessWidget {
  const SignUP({super.key});


Future<void> signUp() async {
    final isValid = _formKey.currentState?.validate() ?? false; // Validate form
    if (!isValid) {
      if (kDebugMode) {
        print('Please fix form errors before submitting.');
      }
      return;
    }

    try {
      final AuthResponse response = await supabase.auth.signUp(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
        data: {
          'username': _userNameController.text.trim(),
          'firstname': _firstNameController.text.trim(),
          'lastname': _lastNameController.text.trim(),
        },
      );

      if (response != null) {
        throw response; // Handle Supabase errors gracefully
      }

      if (kDebugMode) {
        print('Sign up successful! User details:');
        print(response.user.toString());
      }

      // Handle successful sign-up:
      // - Store auth token securely
      // - Redirect to protected area
      // - Show success message
      // ...

    } on AuthException catch (error) {
      // Handle specific Supabase authentication errors (e.g., email exists)
      Get.snackbar(
          'Error',
          error.message,
          backgroundColor: TColors.light,
          snackPosition: SnackPosition.BOTTOM);
    } catch (error) {
      // Handle other errors (e.g., network)
      Get.snackbar(
          'Error',
          'An unexpected error occurred. Please try again later.',
          backgroundColor: TColors.light,
          snackPosition: SnackPosition.BOTTOM);
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
            child: Form(
              key: _formKey,
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required.';
                              } else if (value.length < 3) {
                                return 'Please enter at least 3 characters.';
                              } else if (value.length > 50) {
                                return 'Maximum length is 50 characters.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            controller: _firstNameController,
                            decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: TTexts.firstName,
                          )),
                        ),
                        SizedBox(width: TSizes.spaceBtwnItems),
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required.';
                              } else if (value.length < 3) {
                                return 'Please enter at least 3 characters.';
                              } else if (value.length > 50) {
                                return 'Maximum length is 50 characters.';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            controller: _lastNameController,
                            decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.user),
                            labelText: TTexts.lastName,
                          )),
                        )
                      ]),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required.';
                              } else if (value.length < 3) {
                                return 'Please enter at least 3 characters.';
                              } else if (value.length > 50) {
                                return 'Maximum length is 50 characters.';
                              }
                              return null;
                            },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        controller: _userNameController,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: TTexts.userName,
                      )),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                       validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required.';
                          } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+$").hasMatch(value)) {
                            return 'Please enter a valid email address.';
                          }
                          return null; // Valid input
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct),
                        labelText: TTexts.email,
                      )),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        controller: _phoneNoController,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.call),
                        labelText: TTexts.phoneNo,
                      )),
                      SizedBox(height: TSizes.spaceBtwnInputField),
                      TextFormField(
                        validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required.';
                        } else if (value.length < 8) {
                          return 'Password must be at least 8 characters long.';
                        } else if (!RegExp(r"[a-zA-Z0-9]+").hasMatch(value)) {
                          return 'Password must contain a combination of letters and numbers.';
                        }
                        return null;
                      },
                        textInputAction: TextInputAction.next,
                        controller: _passwordController,
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
                              child:
                                  Checkbox(value: true, onChanged: (value) {})),
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
                            onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  signUp(); 
                                } else {
                                  // Show error message to the user
                                  Get.snackbar(
                                    'Error',
                                    'Please fix form errors before proceeding.',
                                    backgroundColor: Colors.redAccent,
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                }
                              },
                            child: const Text(TTexts.createAccount)),)
                          // child: ElevatedButton(
                          //   onPressed: () =>
                          //       Get.to(() => const VerifyEmailScreen()
                          //       ),
                          //   child: const Text(TTexts.createAccount),
                          // )
                          // )
                    ],
                  ))
                ],
              ),
            ),
          )),
        ));
  }
}


