// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../widgets/center_widget.dart';
import 'login_controller.dart';
import 'dart:math' as mat;

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -160,
            left: -30,
            child: topWidget(),
          ),
          Positioned(
            bottom: 6.h,
            left: -5.w,
            child: bottomWidget(),
          ),
          CenterWidget(size: screenSize),
        ],
      ),
    );
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
              Color(0x007CBFCF),
              Color(0XB316BFC4),
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
            Color(0XB316BFC4),
            Color(0x007CBFCF),
          ],
        ),
      ),
    );
  }
}
