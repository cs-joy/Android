import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';

import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class EliteStrengthContainer extends StatelessWidget {
  const EliteStrengthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        // color: Color(0xFF171717),
        color: Color(0xFF171717),
      ),

      child: Column(
        children: [
          Image.asset(ImageManager.training),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Elite Strength",
                      style: getSemiBold600Style25(
                        fontSize: 25.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                    SizedBox(width: 15.w),
      
                    Container(
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        // ignore: deprecated_member_use
                        color: Colors.black54.withOpacity(0.5),
                        border: Border.all(
                          color: ColorManager.chatTextColorTwo,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "High Intensity",
                          style: getRegular400Style13(
                            fontSize: 13.sp,
                            color: ColorManager.textPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
      
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Bench Press",
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: Colors.white54,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
      
                Divider(color: Color(0xFF212121), thickness: 1),
      
                SizedBox(height: 8.h),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50.w,
                          height: 50.h,
      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xFF212121),
                          ),
                          child: Center(
                            child: Image.asset(
                              IconManager.timer,
                              height: 27.h,
                              width: 27.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
      
                        SizedBox(width: 10.w),
      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Duration",
                              style: getRegular400Style14(
                                fontSize: 14.sp,
                                color: Colors.white54,
                              ),
                            ),
      
                            SizedBox(height: 10.h),
      
                            Text(
                              "60m",
                              style: getSemiBold600Style20(
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
      
                    Row(
                      children: [
                        Container(
                          width: 50.w,
                          height: 50.h,
      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xFF212121),
                          ),
                          child: Center(
                            child: Image.asset(
                              IconManager.timer,
                              height: 27.h,
                              width: 27.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
      
                        SizedBox(width: 10.w),
      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Exercises",
                              style: getRegular400Style14(
                                fontSize: 14.sp,
                                color: Colors.white54,
                              ),
                            ),
      
                            SizedBox(height: 10.h),
      
                            Text(
                              "9 sets",
                              style: getSemiBold600Style20(
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
      
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
