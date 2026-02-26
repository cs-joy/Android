import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

class SubscriptionSuccessScreen extends StatelessWidget {
  const SubscriptionSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CommonHeader(),
                SizedBox(height: 40.h),

                Image.asset(
                  IconManager.subSuccess,
                  height: 120.h,
                  width: 120.h,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: 30.h),

                Text(
                  "your subscription is success",
                  style: getRegular400Style32(
                    fontSize: 32.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  strutStyle: StrutStyle(height: 1.7),
                  textAlign: TextAlign.center,
                  "Thank you for your subscription to kickstart, \nenjoy various premium features in your \npocket to your body.",
                  style: getMedium500Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 35.h),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  backgroundColor: ColorManager.buttonColor,
                  title: "back to home",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.mainLayoutRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
