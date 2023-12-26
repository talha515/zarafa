import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zarafa/screens/auth/login.dart';
import 'package:zarafa/screens/onboarding/ob_1.dart';
import 'package:zarafa/screens/onboarding/ob_2.dart';
import 'package:zarafa/screens/onboarding/ob_3.dart';
import 'package:zarafa/screens/onboarding/ob_4.dart';
import 'package:zarafa/utils/button.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/text_widget.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  PageController controller = PageController(initialPage: 0);
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (val) {
              setState(() {
                i = val;
              });
            },
            children: const [
              OnboardingPageOne(),
              OnboardingPageTwo(),
              OnboardingPageThree(),
              OnboardingPageFour(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => AnimatedContainer(
                    height: 7.h,
                    width: index == i ? 54.w : 7.w,
                    margin: EdgeInsets.symmetric(horizontal: 3.w),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(index == i ? 30.r : 100.r),
                      color: index == i ? primaryColor : lightGrey,
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    i == 3
                        ? SizedBox()
                        : TextWidget(
                            text: 'Skip',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    Button(
                      onTap: () {
                        if (i <= 2) {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.linear);
                        } else {
                          Get.offAll(() => const LoginScreen(),
                              transition: Transition.fade);
                        }
                      },
                      height: 48.h,
                      width: i == 3 ? 370.w : 120.w,
                      text: i == 3 ? 'Let’s Get Started' : 'Next',
                      fontsize: 20.sp,
                      borderRadius: i == 3 || i == 2 ? 8.r : 40.r,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
