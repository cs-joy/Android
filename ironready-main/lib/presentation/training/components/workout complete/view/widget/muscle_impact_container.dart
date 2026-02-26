import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class MuscleImpactContainer extends StatelessWidget {
  const MuscleImpactContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xFF212121),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Primary",
                  style: getRegular400Style14(
                    fontSize: 14.sp,
                    color: Colors.white54,
                  ),
                ),

                Container(
                  width: 55.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    // ignore: deprecated_member_use
                    color: Colors.black54.withOpacity(0.5),
                    border: Border.all(color: ColorManager.chatTextColorTwo),
                  ),
                  child: Center(
                    child: Text(
                      "Chest",
                      style: getRegular400Style13(
                        fontSize: 13.sp,
                        color: ColorManager.textPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Divider(thickness: 1, color: Color.fromARGB(255, 96, 93, 93)),

            SizedBox(height: 10.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Secondary",
                  style: getRegular400Style14(
                    fontSize: 14.sp,
                    color: Colors.white54,
                  ),
                ),

                Container(
                  width: 170.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    // ignore: deprecated_member_use
                    color: Colors.black54.withOpacity(0.5),
                    border: Border.all(color: ColorManager.chatTextColorTwo),
                  ),
                  child: Center(
                    child: Text(
                      "Shoulders, Back of Arms",
                      style: getRegular400Style13(
                        fontSize: 13.sp,
                        color: ColorManager.textPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
