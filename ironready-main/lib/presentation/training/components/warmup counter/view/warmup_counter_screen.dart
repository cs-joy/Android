import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common widget/common_header.dart';
import 'package:iron_ready/presentation/common widget/common_page_gradient.dart';

class WarmupCounterScreen extends StatefulWidget {
  const WarmupCounterScreen({super.key});

  @override
  State<WarmupCounterScreen> createState() => _WarmupCounterScreenState();
}

class _WarmupCounterScreenState extends State<WarmupCounterScreen> {
  late Timer _timer;
  // int totalSeconds = 4 * 60 + 59; // 04:59
  int totalSeconds = 1 * 2 + 0; // 00:01

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (totalSeconds == 0) {
        timer.cancel();

        /// 🔥 Navigate when counter finishes
     Navigator.pushNamed(context, RouteName.warmupDoneScreenRoute);
      } else {
        setState(() {
          totalSeconds--;
        });
      }
    });
  }

  String get minutes =>
      (totalSeconds ~/ 60).toString().padLeft(2, '0');

  String get seconds =>
      (totalSeconds % 60).toString().padLeft(2, '0');

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CommonHeader(),
                SizedBox(height: 20.h),

                /// Title
                Text.rich(
                  TextSpan(
                    text: "you are almost \n",
                    style: getRegular400Style32(
                      fontSize: 32.sp,
                      color: ColorManager.whiteColor,
                    ),
                    children: [
                      TextSpan(
                        text: "Done",
                        style: getRegular400Style32(
                          fontSize: 32.sp,
                          color: ColorManager.textPrimary,
                        ),
                      ),
                      TextSpan(
                        text: " to your plan",
                        style: getRegular400Style32(
                          fontSize: 32.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 10.h),

                Text(
                  "Today’s Performance Plan",
                  style: getRegular400Style16(
                    fontSize: 16.sp,
                    color: Colors.white54,
                  ),
                ),

                SizedBox(height: 50.h),

              
                Text.rich(
                  TextSpan(
                    text: "$minutes:",
                    style: getRegular400Style96(
                      fontSize: 96.sp,
                      color: ColorManager.whiteColor,
                    ),
                    children: [
                      TextSpan(
                        text: seconds,
                        style: getRegular400Style96(
                          fontSize: 96.sp,
                          color: ColorManager.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
