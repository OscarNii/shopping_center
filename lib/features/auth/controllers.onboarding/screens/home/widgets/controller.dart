import 'package:get/get.dart';

class Slidecontroller extends GetxController {
  static Slidecontroller get instance => Get.find();

  final currentIndex = 0.obs;

  void changeIndex(index) {
    currentIndex.value = index;
  }
}
