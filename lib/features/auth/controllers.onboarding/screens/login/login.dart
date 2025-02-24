// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/common/StringValidation/string_validation.dart';
import 'package:shopping_center/common/style/styles_spacings.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/passwod_config/forget_password.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/sign%20up/sign_up.dart';
import 'package:shopping_center/navigation_menu.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/constants/text_strings.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'dart:async'; // For StreamSubscription
import 'package:supabase_flutter/supabase_flutter.dart'; // For Supabase and AuthChangeEvent

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isChecked = false;
  StreamSubscription? _authSubscription;
  bool _obscureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _authSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    // Future<void> _login() async {
    //   final AuthResponse response = await supabase.auth.signInWithPassword(
    //     email: _emailController.text.trim(),
    //     password: _passwordController.text.trim(),
    //   );
    //   if (response.user == null) {
    //     if (kDebugMode) {
    //       print('Sign in failed');
    //     }
    //   } else {
    //     if (kDebugMode) {
    //       print('Sign in successful! User details:');
    //       print(response.user.toString());
    //     }
    //     Get.to(
    //       () => const NavigationMenu(),
    //     );
    //   }
    // }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: FadeInDown(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: TSizes.appBarHeight),
                    SizedBox(height: TSizes.appBarHeight),
                    Text(TTexts.loginTitle,
                        style: Theme.of(context).textTheme.headlineMedium),
                    SizedBox(height: TSizes.sm),
                    Text(TTexts.loginSubTitle,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwnSections),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                          validator: StringValidation.email,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email,
                          ),
                        ),
                        SizedBox(height: TSizes.spaceBtwnInputField),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller: _passwordController,
                          obscureText: _obscureText,
                          textInputAction: TextInputAction.done,
                          validator: StringValidation.password,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(_obscureText
                                  ? Iconsax.eye_slash
                                  : Iconsax.eye),
                            ),
                          ),
                        ),
                        SizedBox(height: TSizes.spaceBtwnInputField / 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      _isChecked = value!;
                                    });
                                  },
                                ),
                                Text(TTexts.rememberMe),
                              ],
                            ),
                            TextButton(
                              onPressed: () =>
                                  Get.to(() => const ForgetPassword()),
                              child: Text(
                                TTexts.forgetPassword,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .apply(color: TColors.grey),
                              ),
                            )
                          ],
                        ),

                        // CreateAccount(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.dark,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        try {
                          Get.to(() => const NavigationMenu());
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Login failed: ${e.toString()}')),
                          );
                        }
                      }
                    },
                    child: const Text(TTexts.login,
                        style: TextStyle(color: TColors.light)),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwnSections),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                          color: dark ? TColors.darkGrey : TColors.grey,
                          thickness: 1,
                          indent: 60,
                          endIndent: 5),
                    ),
                    Text(TTexts.orSiginWith.capitalize!,
                        style: Theme.of(context).textTheme.labelMedium),
                    Flexible(
                      child: Divider(
                          color: dark ? TColors.darkGrey : TColors.grey,
                          thickness: 1,
                          indent: 5,
                          endIndent: 60),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwnSections),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: TColors.grey),
                          borderRadius: BorderRadius.circular(100)),
                      child: InkWell(
                        onTap: () {},
                        child: Semantics(
                          label: 'Sign in with Google',
                          child: Image(
                            width: TSizes.xl,
                            height: TSizes.xl,
                            image: AssetImage(TImages.googleLogo),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwnItems),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50)),
                      child: InkWell(
                        onTap: () {},
                        child: Semantics(
                          label: 'Sign in with Facebook',
                          child: Image(
                            width: TSizes.xl,
                            height: TSizes.xl,
                            image: AssetImage(TImages.facebookLogo),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwnItems),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: TColors.grey),
                          borderRadius: BorderRadius.circular(250)),
                      child: InkWell(
                        onTap: () {},
                        child: Semantics(
                          label: 'Sign in with GitHub',
                          child: Image(
                            width: TSizes.xl,
                            height: TSizes.xl,
                            image: AssetImage(TImages.githubLogo),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwnSections),
                Center(
                  child: InkWell(
                    onTap: () => Get.to(() => const SignUP()),
                    child: Text(TTexts.haveaccount,
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _setupAuthListener(BuildContext context) {
    // Commenting out until Supabase is properly initialized
    // _authSubscription = supabase.auth.onAuthStateChange.listen((data) {
    //   final event = data.event;
    //   if (event == AuthChangeEvent.signedIn) {
    //     Get.to(() => const NavigationMenu());
    //   }
    // });
  }
}
