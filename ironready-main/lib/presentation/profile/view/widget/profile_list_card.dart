import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class ProfileListCard extends StatelessWidget {
  const ProfileListCard({
    super.key,
    required this.title,
    required this.iconpath,
    required this.onTap,
  });

  final String title;
  final String iconpath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60.h,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: ColorManager.profileContainer,
          // color: Colors.black.withOpacity(0.3),
          // color:Color(0xFF282925).withOpacity(0.6),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    iconpath,
                    height: 27.h,
                    width: 27.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    title,
                    style: getSemiBold600Style16(
                      fontSize: 17.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),

              Image.asset(
                IconManager.arrowone,
                height: 30.h,
                width: 30.w,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
