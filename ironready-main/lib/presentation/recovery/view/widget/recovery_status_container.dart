import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class RecoveryContainer extends StatelessWidget {
  const RecoveryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: const Color(0xFF282924),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Recovery Status",
                style: getSemiBold600Style16(color: ColorManager.whiteColor),
              ),
            ),

            SizedBox(height: 15.h),

            Container(
              width: double.infinity,
              height: 120.h, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xFF171717),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      IconManager.alartone,
                      height: 26.h,
                      width: 26.w,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(width: 10.w),

                  
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                            height: 1.5, // line spacing বাড়ানো
                          ),
                          children: [
                            TextSpan(
                              text: 'Recovery Tip: ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Hydrate and prioritize protein intake within the next 45 minutes for optimal muscle repair and growth.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Image.asset(
                  IconManager.redone,
                  height: 15.h,
                  width: 15.w,
                  fit: BoxFit.contain,
                ),

                SizedBox(width: 10.w),

                Text(
                  "Need Recovery",
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Container(
                  width: 80.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFF2612), Color(0xFFFF6303)],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Chest",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                Container(
                  width: 95.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFF2612), Color(0xFFFF6303)],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Shoulders",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                Container(
                  width: 120.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFF2612), Color(0xFFFF6303)],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Back of Arms",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Image.asset(
                  IconManager.orangeone,
                  height: 15.h,
                  width: 15.w,
                  fit: BoxFit.contain,
                ),

                SizedBox(width: 10.w),

                Text(
                  "Need Recovery",
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Container(
                  width: 80.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFe37705), Color(0xFFc99608)],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Left leg",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                Container(
                  width: 95.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFe37705), Color(0xFFc99608)],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Right leg",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Image.asset(
                  IconManager.yellowone,
                  height: 15.h,
                  width: 15.w,
                  fit: BoxFit.contain,
                ),

                SizedBox(width: 10.w),

                Text(
                  "Need Recovery",
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Row(
              children: [
                Container(
                  width: 55.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 213, 236, 37),
                        Color(0xFF909e31),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Abs",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 8.w),

                Container(
                  width: 105.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 213, 236, 37),
                        Color(0xFF909e31),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Lower Back",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 8.w),

                Container(
                  width: 140.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 213, 236, 37),
                        Color(0xFF909e31),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2b2421),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Center(
                      child: Text(
                        "Lower Abdominal",
                        style: getRegular400Style14(
                          fontSize: 15.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}
