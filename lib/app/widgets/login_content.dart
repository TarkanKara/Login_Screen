// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/app/modules/login_page/login_controller.dart';
import 'package:flutterfire_login_ui/utils/constant.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../routes/app_pages.dart';
import 'bottom_text.dart';
import 'top_text.dart';

class LoginContent extends GetView<LoginController> {
  final String title;
  const LoginContent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10.h,
          left: 5.w,
          child: TopText(title: title),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  inputField(
                      "Email", Ionicons.mail_outline, controller.email, false),
                  inputField("Password", Ionicons.lock_closed,
                      controller.password, true),
                  loginButton("Log In", context, controller),
                  forgotPassword("Forgot Password?", context),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: BottomText(
                textSpanTitle: "Don't have an account? ",
                textSpanTitle2: "Sign Up",
                fuction: () {
                  Get.toNamed(Routes.SIGNUP);
                }),
          ),
        )
      ],
    );
  }
}

//Widget inputField
Widget inputField(String text, IconData iconData,
    TextEditingController controller, bool truee) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
    child: SizedBox(
      height: 5.h,
      child: Material(
        elevation: 8,
        shadowColor: Colors.black87,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: TextFormField(
          obscureText: truee,
          controller: controller,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
            hintText: text,
            prefixIcon: Icon(iconData),
          ),
        ),
      ),
    ),
  );
}

//Widget loginButton
Widget loginButton(
    String title, BuildContext context, LoginController controller) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 1.h),
    child: ElevatedButton(
      onPressed: () {
        controller.onLogin();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 1.5.h),
        backgroundColor: kSecondColor,
        shape: const StadiumBorder(),
        elevation: 8,
        shadowColor: Colors.black87,
      ),
      child: Text(title,
          style: Theme.of(context).textTheme.caption!.copyWith(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
    ),
  );
}

//Widget forgotPassword
Widget forgotPassword(String title, BuildContext context) {
  return TextButton(
    onPressed: () {},
    child: Text(title,
        style: Theme.of(context).textTheme.caption!.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: kBackgroundColor,
            )),
  );
}
