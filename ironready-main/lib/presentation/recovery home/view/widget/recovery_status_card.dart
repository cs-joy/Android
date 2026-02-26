import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class RecoveryStatusCard extends StatelessWidget {
  final double width;
  final double height;
  final String icon;
  final String title;
  final Color backgroundColor;
  final Color textColor;

  const RecoveryStatusCard({
    super.key,
    this.width = 100,
    this.height = 75,
    required this.icon,
    required this.title,
    this.backgroundColor = ColorManager.recoveryContainer,
    this.textColor = Colors.white60,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 30.h,
            width: 30.w,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: getRegular400Style16(
              fontSize: 16.sp,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
