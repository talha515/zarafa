import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:zarafa/utils/button.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/text_widget.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MobileNUmber extends StatefulWidget {
  const MobileNUmber({super.key});

  @override
  State<MobileNUmber> createState() => _MobileNUmberState();
}

class _MobileNUmberState extends State<MobileNUmber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.all(15.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/mobileNo.png',
                height: 255.h,
              ),
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            TextWidget(
              text: 'Mobile Number',
              fontSize: 28.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextWidget(
              text: '''       Please enter your valid phone number. 
We will send you 4-digi code to verify account.''',
              fontSize: 16.sp,
              color: Color(0xff4f4f4f),
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 15.h,
            ),
            IntlPhoneField(
              onSubmitted: (value) {
                // if(value){}
              },
              validator: (val) {
                if (val!.number.isNotEmpty) {
                  print('valid');
                } else {
                  print('object');
                }
              },
              cursorColor: primaryColor,
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Cairo',
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              dropdownTextStyle: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 15.sp,
              ),
              flagsButtonPadding: EdgeInsets.only(left: 8.w),
              showDropdownIcon: true,
              dropdownIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.grey,
                size: 15.w,
              ),
              dropdownIconPosition: IconPosition.trailing,
              decoration: InputDecoration(
                counterText: "",
                filled: true,
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                fillColor: Colors.transparent,
                errorStyle: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Cairo',
                  fontSize: 10.sp,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: formfieldborderColor, width: 1.w),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 1.w),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 1.w),
                ),
                hintText: 'Phone number',
                hintStyle: TextStyle(
                  color: hinttextColor,
                  fontFamily: 'Cairo',
                  fontSize: 14.sp,
                ),
              ),
              initialCountryCode: 'JO',
              onChanged: (p) {},
            ),
            SizedBox(
              height: 15.h,
            ),
            Button(
              text: 'Send Code',
            )
          ],
        ),
      ),
    );
  }
}
