import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class DayDateCard extends StatelessWidget {
  final String day;
  final String date;
  final bool isActive;
  final VoidCallback? onTap;

  const DayDateCard({
    super.key,
    required this.day,
    required this.date,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            width: 55.w,
            height: 110.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),

              color: isActive
                  // ignore: deprecated_member_use
                  ? ColorManager.textPrimary
                  // ignore: deprecated_member_use
                  : Colors.white.withOpacity(0.12),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.h),

                /// dot
                Container(
                  decoration: isActive
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: ColorManager.blackColor.withOpacity(0.55),
                              blurRadius: 6,
                              spreadRadius: 0,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        )
                      : null,
                  child: Image.asset(
                    IconManager.dot,
                    height: 14.h,
                    width: 14.h,
                    color: isActive
                        ? ColorManager.blackColor
                        // ignore: deprecated_member_use
                        : Colors.white.withOpacity(0.9),
                  ),
                ),

                SizedBox(height: 15.h),

                Text(
                  day,
                  style: getRegular400Style16(
                    fontSize: 18.sp,
                    // ignore: deprecated_member_use
                    // color: ColorManager.whiteColor.withOpacity(0.8),
                    color: isActive
                        // ignore: deprecated_member_use
                        ? ColorManager.blackColor
                        // ignore: deprecated_member_use
                        : Colors.white.withOpacity(0.6),
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  date,
                  style: getMedium500Style20(
                    fontSize: 20.sp,
                    color: isActive
                        // ignore: deprecated_member_use
                        ? ColorManager.blackColor
                        // ignore: deprecated_member_use
                        : ColorManager.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
