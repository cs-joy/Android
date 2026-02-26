
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

Widget ExerciseItem({
  required String title,
  required String image,
  bool showBar = true,
  bool isCompleted = false,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isCompleted
                        ? ColorManager.textPrimary
                        : ColorManager.trainingContainer,
                    width: 1.5,
                  ),
                ),
              ),
              Container(
                height: 40.h,
                width: 40.w,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    isCompleted
                        ? IconManager.rightmark
                        : IconManager.trainingBar,
                  ),
                ),
              ),
            ],
          ),
          if (showBar) Image.asset(IconManager.baar, height: 40.h),
        ],
      ),

      SizedBox(width: 12.w),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h),
            Text(
              title,
              style: getSemiBold600Style16(
                fontSize: 16.sp,
                color: ColorManager.whiteColor,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "20 Minutes • 3 set",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: ColorManager.whiteColor.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),

      ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Image.asset(
          image,
          width: 60.w,
          height: 60.h,
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}

