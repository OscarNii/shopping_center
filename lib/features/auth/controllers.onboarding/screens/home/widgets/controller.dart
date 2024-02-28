import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get instance => Get.find();

  final currentIndex = 0.obs;

  void changeIndex(index) {
    currentIndex.value = index;
  }
}
