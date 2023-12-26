import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/custom_container.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    required this.onTap,
    this.color,
  });
  final VoidCallback onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomContainer(
        onTap: onTap,
        width: 40.w,
        height: 40.w,
        margin: EdgeInsets.symmetric(vertical: 15.h),
        borderRadius: 10.r,
        borderColor: lightBorderColor,
        borderWidth: 1.w,
        color: color ?? blackColor,
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff161616),
            size: 19.h,
          ),
        ),
      ),
    );
  }
}
