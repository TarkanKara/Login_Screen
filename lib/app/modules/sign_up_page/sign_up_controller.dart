// ignore_for_file: unused_field, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutterfire_login_ui/shared/services/firebase_auth.dart';
import 'package:flutterfire_login_ui/utils/indicator.dart';
import 'package:flutterfire_login_ui/utils/show_alert.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final AuthService _authService = AuthService();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void onCreateAccount() async {
    if (name.text.isNotEmpty &&
        email.text.isNotEmpty &&
        password.text.isNotEmpty) {
      Indicator.showLoading();
      await _authService.createAccount(email.text, password.text);
      Indicator.closeLoading();
    } else {
      showAlert("Lütfen Tüm Alanlari Doldurunuz");
      print("Tüm Alnları Doldurunuz.");
    }
  }
}
