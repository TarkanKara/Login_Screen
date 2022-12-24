// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutterfire_login_ui/app/modules/login_page/login_binding.dart';
import 'package:flutterfire_login_ui/app/modules/login_page/login_page.dart';
import 'package:flutterfire_login_ui/app/modules/sign_up_page/sign_up_binding.dart';
import 'package:flutterfire_login_ui/app/modules/sign_up_page/sign_up_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SIGNUP;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignUp(),
      binding: SignUpBinding(),
    ),
  ];
}
