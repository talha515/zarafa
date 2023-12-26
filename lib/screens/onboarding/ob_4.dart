import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/text_widget.dart';

class OnboardingPageFour extends StatefulWidget {
  const OnboardingPageFour({super.key});

  @override
  State<OnboardingPageFour> createState() => _OnboardingPageFourState();
}

class _OnboardingPageFourState extends State<OnboardingPageFour> {
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
                text: 'Receive alert and report wheever you need',
                color: Color(0xff505050),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextWidget(
                text:
                    'Activate notification to have your entire advertising strategy always under control',
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
