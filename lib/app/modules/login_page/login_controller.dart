// ignore_for_file: avoid_print, unused_field

import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/shared/services/firebase_auth.dart';
import 'package:flutterfire_login_ui/utils/indicator.dart';
import 'package:flutterfire_login_ui/utils/show_alert.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //
  @override
  void onInit() {
    print("LoginPage yüklendi");
    super.onInit();
  }

  final AuthService _authService = AuthService();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void onLogin() async {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      Indicator.showLoading();
      await _authService.login(email.text, password.text);
      Indicator.closeLoading();
    } else {
      showAlert("Tüm Alnları Doldurunuz");
      print("Tüm Alnları Doldurunuz");
    }
  }
}
