import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/colors.dart';
import 'package:zarafa/utils/custom_container.dart';
import 'package:zarafa/utils/text_widget.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final VoidCallback? leadingOnTap;
  final VoidCallback? actionOnTap;
  final FontWeight? fontweight;
  final double? fontsize;
  final bool leading;

  final Widget? action;
  final Color? color;
  const CustomAppBar({
    super.key,
    required this.text,
    required this.leading,
    this.action,
    this.leadingOnTap,
    this.actionOnTap,
    this.fontweight,
    this.fontsize,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 5.h),
      child: Row(
        children: [
          leading
              ? CustomContainer(
                  onTap: leadingOnTap ??
                      () {
                        Navigator.pop(context);
                      },
                  width: 41.w,
                  height: 41.w,
                  margin: EdgeInsets.only(bottom: 5.h),
                  borderRadius: 10.r,
                  borderColor: lightBorderColor,
                  borderWidth: 1.w,
                  color: color ?? whiteColor,
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xff161616),
                      size: 19.h,
                    ),
                  ),
                )
              : SizedBox(
                  width: 30.w,
                ),
          const Spacer(),
          Center(
            child: TextWidget(
              text: text,
              fontSize: fontsize ?? 20.sp,
              fontWeight: fontweight ?? FontWeight.w600,
            ),
          ),
          const Spacer(),
          action ??
              SizedBox(
                width: 30.w,
              )
        ],
      ),
    );
  }
}
