import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class LiftHelpImprove extends StatelessWidget {
  const LiftHelpImprove({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xFF171717),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 15.h),
        
            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
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
                    "Acceleration",
                    style: getRegular400Style14(
                      fontSize: 14.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 10.h),
        
            Text(
              strutStyle: StrutStyle(height: 1.5),
              "Explosive hip extension increases first-step speed and sprint takeoff.",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: Colors.white54,
              ),
            ),
            SizedBox(height: 15.h),
        
            Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
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
                    "Total Body Power",
                    style: getRegular400Style14(
                      fontSize: 14.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 10.h),
        
            Text(
              strutStyle: StrutStyle(height: 1.5),
              "Trains rapid force production through legs, core, and upper body.",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: Colors.white54,
              ),
            ),
        
            SizedBox(height: 15.h),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
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
                    "Athletic Coordination",
                    style: getRegular400Style14(
                      fontSize: 14.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 10.h),
        
            Text(
              strutStyle: StrutStyle(height: 1.5),
              "Improves timing between lower and upper body movement.",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: Colors.white54,
              ),
            ),
        
              SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
