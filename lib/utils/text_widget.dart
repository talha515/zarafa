import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      this.onTap,
      required this.text,
      this.color,
      this.fontFamily,
      this.fontSize,
      this.letterSpacing,
      this.fontWeight,
      this.underline,
      this.overflow,
      this.textShadow,
      this.textAlign});
  final String text;
  final VoidCallback? onTap;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextDecoration? underline;
  final TextOverflow? overflow;
  final List<Shadow>? textShadow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontFamily: fontFamily ?? 'Inter',
            color: color ?? blackColor,
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: fontSize ?? 16.sp,
            overflow: overflow,
            decoration: underline ?? TextDecoration.none,
            decorationColor: color ?? blackColor,
            shadows: textShadow),
      ),
    );
  }
}
