import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/training/components/ready%20warmup/view/widget/warmup_equipmet_container.dart';
import 'package:iron_ready/presentation/training/components/ready%20warmup/view/widget/warmup_essential.dart';

class ReadyWarmupScreen extends StatefulWidget {
  const ReadyWarmupScreen({super.key});

  @override
  State<ReadyWarmupScreen> createState() => _ReadyWarmupScreenState();
}

class _ReadyWarmupScreenState extends State<ReadyWarmupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 10.h),

                    Text(
                      "Get ready with warm up",
                      style: getRegular400Style24(
                        fontSize: 24.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),

                    SizedBox(height: 5.h),

                    Text(
                      "Prepare your body for today’s workout",
                      style: getRegular400Style16(
                        fontSize: 16.sp,
                        color: Colors.white54,
                      ),
                    ),

                    SizedBox(height: 30.h),

                    WarmupEquipmetContainer(
                      title: "Warm-up suggestion:",
                      icon: IconManager.bulb,
                      suggestions: const ["Arm circles", "Band chest openers"],
                    ),

                    SizedBox(height: 15.h),

                    WarmupEquipmetContainer(
                      title: "Equipment check:",
                      icon: IconManager.plug,
                      suggestions: const ["Barbell", "Bench"],
                    ),

                    SizedBox(height: 20.h),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Why warm-up is essential:",
                        style: getSemiBold600Style16(
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    WarmupEssential(),

                    SizedBox(height: 15.h),

                    Container(
                      width: double.infinity,
                      height: 50.h,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: Color(0xFF171717),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              IconManager.info,
                              width: 25.w,
                              height: 25.h,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 12.w),
                            Text(
                              "Focus of proper form to reduce injury risk.",
                              style: getRegular400Style14(
                                fontSize: 14.sp,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 30.h),

                    PrimaryButton(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      backgroundColor: ColorManager.buttonColor,
                      title: "Begin warm up",
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.warmupCounterScreenRoute,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
