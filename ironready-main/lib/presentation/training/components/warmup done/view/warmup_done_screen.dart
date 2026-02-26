
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

class WarmupDoneScreen extends StatelessWidget {
  const WarmupDoneScreen({super.key});

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
                  height: 100.h,
                  width: 100.h,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: 25.h),

                    Text(
                  "Complete!",
                  style: getRegular400Style32(
                    fontSize: 32.sp,
                    color: ColorManager.textPrimary,
                  ),
                ),

                Text(
                  "You are all set now",
                  style: getRegular400Style32(
                    fontSize: 32.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 5.h),

                Text(
                  strutStyle: StrutStyle(height: 1.7),
                  textAlign: TextAlign.center,
                  "Prepare your body for today’s workout",
                  style: getMedium500Style16(
                    fontSize: 16.sp,
                    color: Colors.white54,
                  ),
                ),

                SizedBox(height: 35.h),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Begin workout",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.flatBenchPressScreenRoute);
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
