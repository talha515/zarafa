import 'package:flutter/material.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/text_widget.dart';

class _OnboardingOnState extends StatefulWidget {
  const _OnboardingOnState({super.key});

  @override
  State<_OnboardingOnState> createState() => __OnboardingOnStateState();
}

class __OnboardingOnStateState extends State<_OnboardingOnState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(children: [
        Image.asset('assets/ob_1.png'),
        TextWidget(text: 'Advertising platform-all in one place'),
        TextWidget(
            text: 'Rediscover the way you manage your advertising strategies')
      ]),
    );
  }
}
