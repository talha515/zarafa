import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zarafa/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.validator,
      this.keyboardType,
      this.labelText,
      this.color,
      this.filledColor,
      this.hint,
      this.prefixIcon,
      this.onFieldSubmitted,
      this.textInputAction,
      this.enable,
      this.maxline,
      this.focusnode,
      this.obsecure,
      this.hintTextColor,
      this.contentpadding,
      this.fontFamily,
      this.borderColor,
      this.fontSize,
      this.hintTextSize,
      this.suffixIcon,
      this.borderRadius,
      this.fontWeight,
      this.hintFontWeight,
      this.onChanged,
      this.onTap});
  final TextEditingController controller;
  final String? Function(String?) validator;
  final TextInputType? keyboardType;
  final String? labelText;
  final Widget? prefixIcon;
  final Color? color;
  final EdgeInsets? contentpadding;
  final bool? enable;
  final int? maxline;
  final Color? filledColor;
  final String? hint;
  final FocusNode? focusnode;
  final Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final Color? hintTextColor;
  final String? fontFamily;
  final Color? borderColor;
  final double? fontSize;
  final double? hintTextSize;
  final double? borderRadius;
  final Widget? suffixIcon;
  final FontWeight? fontWeight;
  final FontWeight? hintFontWeight;
  final bool? obsecure;
  final Function(String)? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onTap: onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: primaryColor,
      maxLines: maxline ?? 1,
      focusNode: focusnode,
      enabled: enable ?? true,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      obscureText: obsecure ?? false,
      style: TextStyle(
        fontSize: fontSize ?? 15.sp,
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: fontWeight ?? FontWeight.w400,
        color: blackColor,
      ),
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          color: Colors.red,
          fontFamily: fontFamily ?? 'Inter',
          fontSize: 10.sp,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: filledColor ?? Colors.transparent,
        isDense: true,
        contentPadding: contentpadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        hintStyle: TextStyle(
            color: hintTextColor ?? hinttextColor,
            fontFamily: fontFamily ?? 'Inter',
            fontSize: hintTextSize ?? 16.sp,
            fontWeight: hintFontWeight ?? FontWeight.w400),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(
            width: 1.w,
            color: primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(
              color: borderColor ?? formfieldborderColor, width: 1.w),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(color: Colors.red, width: 1.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
          borderSide: BorderSide(color: Colors.red, width: 1.w),
        ),
      ),
    );
  }
}
