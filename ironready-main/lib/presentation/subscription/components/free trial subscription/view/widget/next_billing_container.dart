import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class NextBillingContainer extends StatelessWidget {
  const NextBillingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.h,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF575942)),
        borderRadius: BorderRadius.circular(12.r),
        // color: Color(0xFF262624),
        // color: Colors.black.withOpacity(0.4),
        color: Color(0xFF262624).withOpacity(0.7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Next billing",
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                Text(
                  "\$9.99",
                  style: getSemiBold600Style18(
                    fontSize: 18.sp,
                    color: ColorManager.textPrimary,
                  ),
                ),
              ],
            ),

            SizedBox(height: 12.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Starting on 14 Jan 2026",
                  style: getRegular400Style14(
                    fontSize: 14.sp,
                    color: Colors.white54,
                  ),
                ),

                Text(
                  "Per Month",
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
