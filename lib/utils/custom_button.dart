import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/custom_container.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final String imagePath;

  final Color color;

  CustomButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    required this.imagePath,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      onTap: onTap,
      width: 112.w,
      height: 33.h,
      borderRadius: 35.r,
      color: color,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 15.h,
            // fit: BoxFit.contain,
          ),
          SizedBox(
            width: 15.w,
          ),
          Center(
            child: Text(
              text,
              style: TextStyle(
                color: whiteColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
