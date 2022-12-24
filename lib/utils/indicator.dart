import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Indicator {
  //isLoadind
  static void showLoading() {
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  //Closed
  static void closeLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}
