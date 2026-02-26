import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class FreeTrialContainer extends StatelessWidget {
  const FreeTrialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorManager.textPrimary),
        color: Colors.yellow.withOpacity(0.09),
      ),
      child: Column(
        children: [
          SizedBox(height: 4.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                IconManager.timer,
                height: 30.h,
                width: 30.w,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SizedBox(height: 4.h),
                    Text(
                      "Free Trial - 3 days left",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: getSemiBold600Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    Text(
                      "You will be charged \$9.99/month on 14 Jan 2026",
                      style: getRegular400Style14(
                        fontSize: 14.sp,
                        color: ColorManager.whiteColor.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
