import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/recovery%20home/view/widget/workout_status_container.dart';
import 'package:iron_ready/presentation/training/components/workout%20complete/view/widget/elite_strength_container.dart';
import 'package:iron_ready/presentation/training/components/workout%20complete/view/widget/lift_help_improve.dart';
import 'package:iron_ready/presentation/training/components/workout%20complete/view/widget/muscle_impact_container.dart';
import 'package:iron_ready/presentation/training/components/workout%20complete/view/widget/recovery_tip_container.dart';

class WorkoutCompleteScreen extends StatefulWidget {
  const WorkoutCompleteScreen({super.key});

  @override
  State<WorkoutCompleteScreen> createState() => _WorkoutCompleteScreenState();
}

class _WorkoutCompleteScreenState extends State<WorkoutCompleteScreen> {
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
                    SizedBox(height: 20.h),

                    Text(
                      "Workout complete",
                      style: getSemiBold600Style24(
                        fontSize: 24.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    Text(
                      "Great job staying consistent",
                      style: getRegular400Style16(
                        fontSize: 16.sp,
                        color: Colors.white54,
                      ),
                    ),

                    SizedBox(height: 20.h),

               

                    EliteStrengthContainer(),  //problem 

                    SizedBox(height: 20.h),

                    Row(
                      children: [
                        Image.asset(
                          IconManager.chest,
                          width: 25.w,
                          height: 25.h,
                          fit: BoxFit.contain,
                        ),

                        SizedBox(width: 10.w),

                        Text(
                          "Muscle Impact",
                          style: getSemiBold600Style16(
                            fontSize: 16.sp,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    MuscleImpactContainer(),

                    SizedBox(height: 20.h),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "This lift helps improve:",
                        style: getSemiBold600Style16(
                          fontSize: 16.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    LiftHelpImprove(),

                    SizedBox(height: 20.h),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Workout Status",
                        style: getSemiBold600Style16(
                          fontSize: 16.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    WorkoutStatusContainer(),

                    SizedBox(height: 20.h),

                    RecoveryTipContainer(),

                    SizedBox(height: 40.h),

                    PrimaryButton(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      backgroundColor: ColorManager.buttonColor,
                      title: "View recovery status",
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.recoveryHomeScreenRoute,
                        );
                      },
                    ),

                    SizedBox(height: 30.h),

                    PrimaryButton(
                      borderColor: ColorManager.textPrimary,
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      backgroundColor: ColorManager.transparentColor,
                      title: "Back to home",
                      style: getMedium500Style18(
                        color: ColorManager.whiteColor,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.mainLayoutRoute);
                      },
                    ),

                    SizedBox(height: 15.h),
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
