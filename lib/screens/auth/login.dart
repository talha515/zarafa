import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zarafa/screens/auth/sign_up.dart';
import 'package:zarafa/utils/button.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/custom_button.dart';
import 'package:zarafa/utils/custom_container.dart';
import 'package:zarafa/utils/text_field.dart';
import 'package:zarafa/utils/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool check = false;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Image.asset(
              'assets/login_img.png',
              height: 255.h,
            ),
            TextWidget(
              text: 'Welcome Back!',
              fontSize: 28.sp,
              fontWeight: FontWeight.w500,
            ),
            TextWidget(
              text: 'Login in to your account',
              color: Color(0xff8C8C8C),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            Container(
              height: 100.h,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomContainer(
                            onTap: () {
                              setState(() {
                                i = index;
                              });
                            },
                            height: 79.h,
                            width: 104.w,
                            padding: EdgeInsets.only(bottom: 20.h),
                            color: i == index ? whiteColor : Color(0xfff5f5f3),
                            borderRadius: 21.r,
                            boxShadow: [
                              BoxShadow(
                                color: blackColor.withOpacity(0.25),
                                blurRadius: 12,
                                offset: Offset(0, 2),
                              )
                            ],
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: TextWidget(
                                text: index == 0 ? 'Advertiser' : 'Agency',
                                color: i == index
                                    ? blackColor
                                    : blackColor.withOpacity(0.33),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        CustomContainer(
                          onTap: () {
                            setState(() {
                              i = index;
                            });
                          },
                          height: 40.w,
                          width: 40.w,
                          borderRadius: 100.r,
                          boxShadow: [
                            BoxShadow(
                              color: blackColor.withOpacity(0.13),
                              blurRadius: 18,
                              offset: Offset(0, 1),
                            )
                          ],
                          gradient: i == index
                              ? LinearGradient(
                                  colors: [
                                    primaryColor,
                                    purpleColor,
                                    greyColor,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )
                              : null,
                          color: whiteColor,
                          child: Center(
                            child: Image.asset(
                              index == 0
                                  ? 'assets/advertiser.png'
                                  : 'assets/agency.png',
                              height: 24.h,
                              color:
                                  i == index ? whiteColor : Color(0xffA4A4A5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            CustomTextFormField(
              controller: emailController,
              validator: (val) {},
            ),
            Row(
              children: [
                CustomContainer(
                  onTap: () {
                    setState(() {
                      check = !check;
                    });
                  },
                  padding: EdgeInsets.fromLTRB(0, 2.h, 5.w, 2.h),
                  child: Row(
                    children: [
                      Icon(
                        !check
                            ? Icons.check_box_outline_blank_sharp
                            : Icons.check_box_sharp,
                        size: 20.h,
                        color:
                            check ? primaryColor : blackColor.withOpacity(0.7),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      TextWidget(
                        text: 'Remember me',
                        fontSize: 14.sp,
                        color: blackColor.withOpacity(0.7),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                TextWidget(
                  text: 'Forgot Password?',
                  fontSize: 14.sp,
                  color: primaryColor,
                  underline: TextDecoration.underline,
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Button(
              text: 'Login',
            ),
            Row(
              children: [
                TextWidget(text: 'Have not account? '),
                TextWidget(
                  onTap: () {
                    Get.to(
                      () => const SignUp(),
                      transition: Transition.rightToLeft,
                    );
                  },
                  text: 'Sign Up',
                  color: primaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            TextWidget(
              text: 'or Signup with',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(
                  text: 'FaceBook',
                  onTap: () {},
                  imagePath: 'assets/fb_ic.png',
                  color: Color(0xff193679),
                ),
                CustomButtonWidget(
                  text: 'Google',
                  onTap: () {},
                  imagePath: 'assets/google_ic.png',
                  color: Color(0xffDB4D41),
                ),
                CustomButtonWidget(
                  text: 'Apple',
                  onTap: () {},
                  imagePath: 'assets/apple_ic.png',
                  color: Color(0xff000000),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
