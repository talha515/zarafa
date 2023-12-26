import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final String imagePath;

  bool? apple;

  CustomButtonWidget({
    Key? key,
    required this.text,
    required this.onTap,
    this.apple,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 351.w,
        height: 55.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: Color(0xff181818),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            SizedBox(
              width: 25.w,
              child: Padding(
                padding: EdgeInsets.all(apple == true ? 1 : 0),
                child: Image.asset(
                  imagePath,

                  // fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: width,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Color(0xffD8D8D8),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 45.w,
            ),
          ],
        ),
      ),
    );
  }
}
