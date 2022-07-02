import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomSnackBar(String message,
    {bool isError = true, String title = "Error", Color? bannerColor}) {
  Get.snackbar(title, message,
      titleText: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      backgroundColor: bannerColor);
}
