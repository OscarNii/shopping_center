import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

//variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

//updates page scrolling
  void updatePageIndicator(index) => currentPageIndex.value = index;

//hop to specific page
  void doNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

//hop to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

//skip to next or last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
