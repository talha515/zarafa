import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zarafa/screens/auth/mobile_number.dart';
import 'package:zarafa/utils/button.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/text_field.dart';
import 'package:zarafa/utils/text_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final firstName = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPass = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isfirstVisible = false;
  bool issecVisible = false;
  bool isTermsandCondition = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.all(15.0.h),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                'assets/signupImage.png',
                height: 255.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextWidget(
                text: 'Create zarafa account',
                fontSize: 28.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextFormField(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 30.h,
                            color: Color(0xffa4a4a4),
                          ),
                          hint: 'First name',
                          controller: firstName,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter First name';
                            }
                          })),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                      child: CustomTextFormField(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 30.h,
                            color: Color(0xffa4a4a4),
                          ),
                          hint: "Last name",
                          controller: lastname,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter Last name';
                            }
                          })),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.email,
                    size: 30.h,
                    color: Color(0xffa4a4a4),
                  ),
                  hint: "Email",
                  controller: email,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Enter Email address';
                    }
                  }),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                  obsecure: isfirstVisible,
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 30.h,
                    color: Color(0xffa4a4a4),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isfirstVisible = !isfirstVisible;
                      });
                    },
                    child: Icon(
                      isfirstVisible ? Icons.visibility : Icons.visibility_off,
                      size: 26.h,
                      color: Color(0xffa4a4a4),
                    ),
                  ),
                  hint: "Password",
                  controller: password,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Enter valid password';
                    }
                  }),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFormField(
                  obsecure: issecVisible,
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 30.h,
                    color: Color(0xffa4a4a4),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        issecVisible = !issecVisible;
                      });
                    },
                    child: Icon(
                      issecVisible ? Icons.visibility : Icons.visibility_off,
                      size: 26.h,
                      color: Color(0xffa4a4a4),
                    ),
                  ),
                  hint: "Password",
                  controller: confirmPass,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Enter password again';
                    }
                  }),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isTermsandCondition = !isTermsandCondition;
                      });
                    },
                    child: Icon(
                      isTermsandCondition
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      size: 24.h,
                      color: blackColor,
                    ),
                  ),
                  TextWidget(
                    text: '  I agree to',
                    fontSize: 14.sp,
                  ),
                  TextWidget(
                    text: ' privacy policy',
                    fontSize: 14.sp,
                    color: primaryColor,
                  ),
                  TextWidget(
                    text: ' and',
                    fontSize: 14.sp,
                  ),
                  TextWidget(
                    text: ' terms & conditions',
                    fontSize: 14.sp,
                    color: primaryColor,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Button(
                borderRadius: 10.r,
                onTap: () {
                  Get.to(() => MobileNUmber());
                  // if (_formkey.currentState!.validate()) {
                  //   print('congrats');
                  //   Get.to(() => MobileNUmber());
                  // } else {
                  //   print('error');
                  // }
                },
                text: 'Sign Up',
              )
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
