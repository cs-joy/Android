import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RouteName.profileScreenRoute);
                },
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(ImageManager.profile),
                  backgroundColor: Colors.transparent,
                ),
              ),

              SizedBox(width: 8.w),

              Column(
                children: [
                  Text(
                    "Good morning!",
                    style: getRegular400Style14(
                      fontSize: 15.sp,
                      color: ColorManager.borderColor,
                    ),
                  ),

                  SizedBox(height: 5.h),

                  Text(
                    "Hello Kristin",
                    style: getRegular400Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteName.notificationScreenRoute);
            },
            child: Image.asset(
              IconManager.notification,
              height: 30.h,
              width: 30.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
