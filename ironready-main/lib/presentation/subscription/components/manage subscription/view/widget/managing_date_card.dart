import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class ManagingDateCard extends StatelessWidget {
  const ManagingDateCard({super.key, required this.date, required this.durationText});

  final String date;
  final String durationText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
         color: Colors.white24.withOpacity(0.11),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorManager.whiteColor),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  durationText,
                  style: getRegular400Style14(
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
