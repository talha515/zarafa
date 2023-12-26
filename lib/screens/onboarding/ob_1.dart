import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/text_widget.dart';

class OnboardingPageOne extends StatefulWidget {
  const OnboardingPageOne({super.key});

  @override
  State<OnboardingPageOne> createState() => _OnboardingPageOneState();
}

class _OnboardingPageOneState extends State<OnboardingPageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/ob_1.png',
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const TextWidget(
                text: 'Advertising platform-all in one place',
                color: Color(0xff505050),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextWidget(
                text:
                    'Rediscover the way you manage your advertising strategies',
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
