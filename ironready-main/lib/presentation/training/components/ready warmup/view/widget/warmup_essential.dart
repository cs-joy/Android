import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class WarmupEssential extends StatelessWidget {
  const WarmupEssential({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 330.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xFF171717),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 15.h),

            Row(
              children: [
                Image.asset(
                  IconManager.dot,
                  height: 5.h,
                  width: 5.w,
                  fit: BoxFit.contain,
                  color: ColorManager.whiteColor,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Injury Prevention",
                  style: getRegular400Style14(
                    fontSize: 14.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Text(
              strutStyle: StrutStyle(height: 1.5),
              "Prepares your joints and connective tissues for heavy loads, significantly reducing the risk of tears or strains.",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: Colors.white54,
              ),
            ),
            SizedBox(height: 15.h),

            Row(
              children: [
                Image.asset(
                  IconManager.dot,
                  height: 5.h,
                  width: 5.w,
                  fit: BoxFit.contain,
                  color: ColorManager.whiteColor,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Optimal Performance",
                  style: getRegular400Style14(
                    fontSize: 14.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Text(
              strutStyle: StrutStyle(height: 1.5),
              "Increases blood flow to the muscles, allowing for more explosive power and better range of motion during your sets.",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: Colors.white54,
              ),
            ),

            SizedBox(height: 15.h),

            Row(
              children: [
                Image.asset(
                  IconManager.dot,
                  height: 5.h,
                  width: 5.w,
                  fit: BoxFit.contain,
                  color: ColorManager.whiteColor,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Mental Readiness",
                  style: getRegular400Style14(
                    fontSize: 14.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Text(
              strutStyle: StrutStyle(height: 1.5),
              "Helps establish a strong mind-muscle connection, ensuring you are focused before tackling the main lifts.",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
