// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/utils/constant.dart';
import 'package:ionicons/ionicons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'bottom_text.dart';
import 'top_text.dart';

enum Screens { createAccount, welcomeBack }

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.createAccount;
    return Stack(
      children: [
        Positioned(
          top: 10.h,
          left: 5.w,
          child: const TopText(screen: currentScreen),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: currentScreen == Screens.createAccount
                    ? [
                        inputField("Name", Ionicons.person_outline),
                        inputField("Email", Ionicons.mail_outline),
                        inputField("Password", Ionicons.lock_closed),
                        loginButton("Sign Up", context),
                        orDiveder(context),
                        logos(),
                      ]
                    : [
                        inputField("Email", Ionicons.mail_outline),
                        inputField("Password", Ionicons.lock_closed),
                        loginButton("Log In", context),
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
            child: BottomText(screen: currentScreen),
          ),
        )
      ],
    );
  }
}

//Widget inputField
Widget inputField(String text, IconData iconData) {
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
Widget loginButton(String title, BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 1.h),
    child: ElevatedButton(
      onPressed: () {},
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

//Widget orDiveder
Widget orDiveder(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 2.h),
    child: Row(
      children: [
        Flexible(child: Container(height: 0.3.h, color: kPrimaryColor)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Text("or",
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
        ),
        Flexible(child: Container(height: 0.3.h, color: kPrimaryColor)),
      ],
    ),
  );
}

//Widget logos
Widget logos() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/images/google.png"),
      SizedBox(width: 5.w),
      Image.asset("assets/images/facebook.png"),
    ],
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
