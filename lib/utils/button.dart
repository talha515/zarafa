import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/custom_container.dart';

import 'colors.dart';
import 'text_widget.dart';

class Button extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? borderColor;
  final Color? color;
  final String? text;
  final VoidCallback? onTap;
  final Widget? child;
  final FontWeight? fontWeight;
  final double? fontsize;
  final Color? textColor;
  final double? borderWidth;
  const Button(
      {super.key,
      this.color,
      this.text,
      this.onTap,
      this.width,
      this.height,
      this.borderColor,
      this.borderRadius,
      this.child,
      this.fontsize,
      this.textColor,
      this.fontWeight,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      onTap: onTap,
      width: width ?? ScreenUtil().screenWidth,
      height: height ?? 55.w,
      borderRadius: borderRadius ?? 50.r,
      color: color ?? primaryColor,
      borderColor: borderColor ?? Colors.transparent,
      borderWidth: borderWidth ?? 0.w,
      child: child ??
          Center(
            child: TextWidget(
              text: text ?? '',
              fontSize: fontsize ?? 16.sp,
              color: textColor ?? whiteColor,
              fontWeight: fontWeight ?? FontWeight.w600,
            ),
          ),
    );
  }
}
