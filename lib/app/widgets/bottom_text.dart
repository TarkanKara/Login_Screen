import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/app/widgets/login_content.dart';
import 'package:flutterfire_login_ui/utils/constant.dart';

class BottomText extends StatelessWidget {
  final Screens screen;
  const BottomText({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //
      },
      behavior: HitTestBehavior.opaque,
      child: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontSize: 15, fontFamily: "Montserrat"),
          children: [
            TextSpan(
              text: screen == Screens.createAccount
                  ? "Already have an account? "
                  : "Don't have an account? ",
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            TextSpan(
              text: screen == Screens.createAccount ? "Log In" : "Sign Up",
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: kSecondColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
