import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notificationTitle, required this.timer, this.ontap});

  final String  notificationTitle;
  final String timer;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: const Color.fromARGB(180, 77, 81, 57),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              IconManager.notificationOne,
              height: 50.h,
              width: 50.w,
              fit: BoxFit.contain,
            ),
      
            SizedBox(width: 10.w),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notificationTitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: getSemiBold600Style16(
                      fontSize: 15.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
      
                  SizedBox(height: 10.h),
      
                  Text(
                    timer,
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
      ),
    );
  }
}
