import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  final String title;
  const TopText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .caption!
          .copyWith(fontSize: 45, fontWeight: FontWeight.w600),
    );
  }
}
