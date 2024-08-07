// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/common/StringValidation/string_validation.dart';
import 'package:shopping_center/common/style/styles_spacings.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/home/widgets/home.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/passwod_config/forget_password.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/sign%20up/sign_up.dart';
import 'package:shopping_center/main.dart';
import 'package:shopping_center/navigation_menu.dart';
import 'package:shopping_center/utils/constants/image_strings.dart';
import 'package:shopping_center/utils/constants/text_strings.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

final _formKey = GlobalKey<FormState>();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
bool _isChecked = false;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                          textInputAction: TextInputAction.done,
                          validator: StringValidation.password,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                      // if (_formKey.currentState!.validate()) {
                      //   await _login();
                      // }
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
                        onTap: () {
                          // _googleSignIn();
                          // _setupAuthListener(context);
                        },
                        child: Image(
                          width: TSizes.xl,
                          height: TSizes.xl,
                          image: AssetImage(TImages.googleLogo),
                        ),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwnItems),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(50)),
                      child: Image(
                        width: TSizes.xl,
                        height: TSizes.xl,
                        image: AssetImage(TImages.facebookLogo),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwnItems),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: TColors.grey),
                          borderRadius: BorderRadius.circular(250)),
                      child: Image(
                        width: TSizes.xl,
                        height: TSizes.xl,
                        image: AssetImage(TImages.githubLogo),
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

  // void _setupAuthListener(BuildContext context) {
  //   supabase.auth.onAuthStateChange.listen((data) {
  //     final event = data.event;
  //     if (event == AuthChangeEvent.signedIn) {
  //       Get.to(() => const NavigationMenu());
  //     }
  //   });
  // }

  // Future<AuthResponse> _googleSignIn() async {
  //   const webClientId =
  //       '942087407273-c0urd6ttkputqjhlt8dbv8sic2ksroku.apps.googleusercontent.com';

  //   /// TODO: update the iOS client ID with your own.
  //   ///
  //   /// iOS Client ID that you registered with Google Cloud.
  //   const iosClientId = 'my-ios.apps.googleusercontent.com';

  //   final GoogleSignIn googleSignIn = GoogleSignIn(
  //     // clientId: iosClientId,
  //     serverClientId: webClientId,
  //   );
  //   final googleUser = await googleSignIn.signIn();
  //   final googleAuth = await googleUser!.authentication;
  //   final accessToken = googleAuth.accessToken;
  //   final idToken = googleAuth.idToken;

  //   if (accessToken == null) {
  //     throw 'No Access Token found.';
  //   }
  //   if (idToken == null) {
  //     throw 'No ID Token found.';
  //   }

  //   return supabase.auth.signInWithIdToken(
  //     provider: OAuthProvider.google,
  //     idToken: idToken,
  //     accessToken: accessToken,
  //   );
  // }
}
