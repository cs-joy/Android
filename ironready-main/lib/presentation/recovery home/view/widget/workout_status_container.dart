import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class WorkoutStatusContainer extends StatefulWidget {
  const WorkoutStatusContainer({super.key});

  @override
  State<WorkoutStatusContainer> createState() => _WorkoutStatusContainerState();
}

class _WorkoutStatusContainerState extends State<WorkoutStatusContainer> {
  int currentStreak = 4;
  final int maxStreak = 5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 160.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: const Color.fromARGB(255, 15, 14, 14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),

              /// Top Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$currentStreak Day Streak",
                    style: getSemiBold600Style16(
                      fontSize: 16.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                  Text(
                    "$currentStreak/$maxStreak workouts",
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: ColorManager.buttonColor,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              Text(
                "You’re on fire! Keep it up.",
                style: getRegular400Style14(
                  fontSize: 14.sp,
                  color: Colors.white54,
                ),
              ),

              SizedBox(height: 20.h),

              Container(
                height: 8.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.black26,
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: currentStreak / maxStreak,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFede845),
                          Color(0xFFfca00a),
                          Color(0xFFff3d0d),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30.h),

              /// Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(maxStreak, (index) {
                  bool isActive = index < currentStreak;

                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Image.asset(
                      IconManager.dotme,
                      height: 14.h,
                      width: 14.w,
                      fit: BoxFit.contain,
                      color: isActive
                          ? ColorManager.buttonColor
                          : Colors.white24,
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
