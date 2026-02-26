import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class SubscriptionCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final bool isPopular;
  final bool isActive;
  final VoidCallback onTap;

  const SubscriptionCard({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.isPopular,
    required this.isActive, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// MAIN CARD
        AnimatedContainer(
          height: 250.h,
          duration: const Duration(milliseconds: 300),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20.r),
            border: isActive
                ? Border(
                    bottom: BorderSide(
                      color: ColorManager.textPrimary,
                      width: 1,
                    ),
                  )
                : null,

                
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: isPopular ? 10.h : 0),

              Text(
                title,
                style: getRegular400Style20(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 20.h),

              Text(
                price,
                style: getRegular400Style32(
                  fontSize: 32.sp,
                  color: ColorManager.textPrimary,
                ),
              ),

              SizedBox(height: 10.h),

              Text(
                subtitle,
                style: getRegular400Style16(
                  fontSize: 16.sp,
                  color: ColorManager.whiteColor,
                ),
              ),

              SizedBox(height: 20.h),

              Container(
                height: 50.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorManager.textPrimary,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: InkWell(
                  onTap: onTap,
                  child: Text(
                    "CONTINUE",
                    style: getSemiBold600Style16(color: ColorManager.blackColor),
                  ),
                ),
              ),
            ],
          ),
        ),

        if (!isActive)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.45),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),

        if (isPopular)
          Positioned(
            top: -14.h,
            left:48.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: ColorManager.textPrimary,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                "POPULAR",
                style: getSemiBold600Style15(
                  fontSize: 15.sp,
                  color: Colors.black),
              ),
            ),
          ),
      ],
    );
  }
}
