import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/button.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/custom_container.dart';
import 'package:zarafa/utils/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool check = false;
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
            )
          ],
        ),
      ),
    );
  }
}
