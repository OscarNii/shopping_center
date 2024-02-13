import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_center/features/auth/controllers.onboarding/screens/home/widgets/store.dart';
import 'package:shopping_center/utils/constants/colors.dart';
import 'package:shopping_center/utils/helpers/helpers_functions.dart';

import 'features/auth/controllers.onboarding/screens/home/widgets/home.dart';
import 'features/auth/controllers.onboarding/screens/home/widgets/profile.dart';
import 'features/auth/controllers.onboarding/screens/home/widgets/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return FadeInDown(
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 80,
            elevation: 1,
            backgroundColor: darkMode ? TColors.dark : TColors.light,
            indicatorColor: darkMode
                ? TColors.light.withOpacity(0.1)
                : TColors.dark.withOpacity(0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.shop),
                label: 'Store',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const StoreScreen(),
    const WishlistScreen(),
    const ProfileScreen(),
  ];
}
