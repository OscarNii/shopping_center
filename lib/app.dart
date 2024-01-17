import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/onboarding_controller.dart';

import 'utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen() ,
    );
  }
}