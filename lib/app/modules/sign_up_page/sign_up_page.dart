import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/app/widgets/signup_content.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../widgets/center_widget.dart';
import 'sign_up_controller.dart';
import 'dart:math' as mat;

class SignUp extends GetView<SignUpController> {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: -160, left: -30, child: topWidget()),
          Positioned(bottom: 6.h, left: -5.w, child: bottomWidget()),
          CenterWidget(size: screenSize),
          const SignUpContent(title: "Create\nAccount "),
        ],
      ),
    );
  }
}

//TopWidget
Widget topWidget() {
  return Transform.rotate(
    angle: -35 * mat.pi / 180,
    child: Container(
      width: 155.w,
      height: 105.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(150),
        gradient: const LinearGradient(
          begin: Alignment(-0.2, -0.8),
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(0, 105, 130, 136),
            Color.fromARGB(179, 19, 61, 62),
          ],
        ),
      ),
    ),
  );
}

//BottomWidget
Widget bottomWidget() {
  return Container(
    width: 125.w,
    height: 50.h,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment(0.6, -1.1),
        end: Alignment(0.7, 0.8),
        colors: [
          Color.fromARGB(179, 77, 135, 137),
          Color.fromARGB(0, 24, 58, 67),
        ],
      ),
    ),
  );
}
