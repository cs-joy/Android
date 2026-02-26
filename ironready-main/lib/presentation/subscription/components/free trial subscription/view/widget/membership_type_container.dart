import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class MembershipTypeContainer extends StatelessWidget {
  const MembershipTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Color(0xFF575942)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Text(
              "Membership Type",
              style: getSemiBold600Style16(
                fontSize: 16.sp,
                color: ColorManager.whiteColor,
              ),
            ),

            SizedBox(height: 10.h),

            Text(
              "14-day free trial",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: Colors.white54,
              ),
            ),

            SizedBox(height: 10.h),

            Row(
              children: [
                Image.asset(
                  IconManager.timer,
                  height: 25.h,
                  width: 25.w,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: 10.w),

                Text(
                  "3 days remaining",
                  style: getSemiBold600Style14(
                    fontSize: 14.sp,
                    color: ColorManager.textPrimary,
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
