import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/button.dart';
import 'package:zarafa/utils/colors.dart';

class LaunchPageView extends StatefulWidget {
  const LaunchPageView({super.key});

  @override
  State<LaunchPageView> createState() => _LaunchPageViewState();
}

class _LaunchPageViewState extends State<LaunchPageView> {
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
              // LaunchScreenOne(),
              // LaunchScreenTwo(),
              // LaunchScreenThree(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    height: 16.w,
                    width: index == i ? 65.w : 16.w,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(index == i ? 30.r : 100.r),
                      color: index == i ? primaryColor : darkBackGroundColor,
                      border: Border.all(
                          color: index == i
                              ? primaryColor
                              : const Color(0xffC8C8C8),
                          width: 1.w),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Button(
                onTap: () {
                  if (i <= 1) {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.linear);
                  } else {
                    // HomeController.to.setSpData(false);
                    // Get.offAll(() => const LoginScreen(),
                    //     transition: Transition.fade);
                  }
                },
                width: 210.w,
                text: i == 2 ? 'Get Started' : 'Next',
                fontsize: 20.sp,
                fontWeight: FontWeight.w500,
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
