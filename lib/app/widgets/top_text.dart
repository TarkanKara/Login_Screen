import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/app/widgets/login_content.dart';

class TopText extends StatelessWidget {
  final Screens screen;
  const TopText({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Text(
      screen == Screens.createAccount ? "Create\nAccount" : "Welcome\nBack",
      style: Theme.of(context)
          .textTheme
          .caption!
          .copyWith(fontSize: 45, fontWeight: FontWeight.w600),
    );
  }
}
