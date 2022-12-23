import 'package:flutter/material.dart';

class CenterWidgetClipper extends CustomClipper<Path> {
  final Path path;
  CenterWidgetClipper({required this.path});

  @override
  Path getClip(Size size) {
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
