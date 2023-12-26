import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/text_widget.dart';

class OnboardingPageThree extends StatefulWidget {
  const OnboardingPageThree({super.key});

  @override
  State<OnboardingPageThree> createState() => _OnboardingPageThreeState();
}

class _OnboardingPageThreeState extends State<OnboardingPageThree> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/ob_3.png',
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const TextWidget(
                text: 'Watch your business grow at your fingertips',
                color: Color(0xff505050),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextWidget(
                text: 'Optimize your performance with tips & insights',
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
