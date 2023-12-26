import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/text_widget.dart';

class OnboardingPageTwo extends StatefulWidget {
  const OnboardingPageTwo({super.key});

  @override
  State<OnboardingPageTwo> createState() => _OnboardingPageTwoState();
}

class _OnboardingPageTwoState extends State<OnboardingPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/ob_2.png',
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const TextWidget(
                text: 'Create new account & campaigns in a few Taps',
                color: Color(0xff505050),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextWidget(
                text: 'Your KPI’s under control with us alerts & Charts',
                textAlign: TextAlign.center,
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff263238),
              ),
            ],
          ),
        )
      ],
    );
  }
}
