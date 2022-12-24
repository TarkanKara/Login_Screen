import 'package:flutter/material.dart';
import 'package:flutterfire_login_ui/utils/constant.dart';

class BottomText extends StatelessWidget {
  final String textSpanTitle, textSpanTitle2;
  final Function fuction;
  const BottomText({
    super.key,
    required this.textSpanTitle,
    required this.textSpanTitle2,
    required this.fuction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => fuction(),
      behavior: HitTestBehavior.opaque,
      child: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontSize: 15, fontFamily: "Montserrat"),
          children: [
            TextSpan(
              text: textSpanTitle,
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            TextSpan(
              text: textSpanTitle2,
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
