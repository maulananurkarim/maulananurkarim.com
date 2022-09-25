import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isDarkMode = false;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    if (isDarkMode) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
    update();
  }
}
