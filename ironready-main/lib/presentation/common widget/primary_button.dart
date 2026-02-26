import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;

  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
    this.style,
    this.padding,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 4.w),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor ?? ColorManager.buttonColor,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: 14.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
              side: BorderSide(
                color:
                    borderColor ?? Colors.transparent, 
                width: 1.5,
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style:
                style ??
                getMedium500Style18(
                  fontSize: 18.sp,
                  color: ColorManager.blackColor,
                ),
          ),
        ),
      ),
    );
  }
}
