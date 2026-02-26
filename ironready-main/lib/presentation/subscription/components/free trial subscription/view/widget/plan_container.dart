import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class PlanContainer extends StatelessWidget {
  const PlanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF575942)),
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xFF262624).withOpacity(0.7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Row(
              children: [
                Image.asset(
                  IconManager.bell,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.contain,
                ),

                SizedBox(width: 15.w),

                Text(
                  "Your Plan Includes:",
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            Row(
              children: [
                Image.asset(
                  IconManager.tek,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.contain,
                ),

                SizedBox(width: 15.w),

                Text(
                  "Notify me 2 days before renewal",
                  style: getSemiBold600Style18(
                    fontSize: 14.sp,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
