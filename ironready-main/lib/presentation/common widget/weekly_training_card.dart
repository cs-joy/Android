import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/workout%20plan/view/widget/day_card.dart';

class WeeklyTrainingCard extends StatelessWidget {
  final String dayShort;
  final String date;
  final String dayName;
  final String muscle;
  final String duration;
  final List<String> workouts;
  final bool isSelected;
  final bool isDone; 
  final VoidCallback onTap;

  const WeeklyTrainingCard({
    super.key,
    required this.dayShort,
    required this.date,
    required this.dayName,
    required this.muscle,
    required this.duration,
    required this.workouts,
    required this.isSelected,
    required this.isDone,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),

          border: isSelected
              ? Border.all(color: ColorManager.textPrimary)
              : null,

          gradient: isSelected
              ? const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 99, 117, 9),
                    Color.fromARGB(255, 42, 48, 9),
                    Color.fromARGB(255, 16, 18, 3),
                  ],
                  stops: [0.1, 0.55, 1.0],
                )
              : null,

          color: isSelected ? null : ColorManager.workoutnonselected,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 15.h),

              /// ================= TOP ROW =================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DayCard(
                        day: dayShort,
                        date: date,
                        isActive: isSelected,
                        onTap: onTap,
                      ),

                      SizedBox(width: 10.w),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h),
                          Text(
                            dayName,
                            style: getSemiBold600Style16(
                              fontSize: 18.sp,
                              color: ColorManager.whiteColor,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Muscle: $muscle",
                            style: getRegular400Style16(
                              fontSize: 16.sp,
                              color: Colors.white54,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Image.asset(
                                IconManager.timer,
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                duration,
                                style: getRegular400Style16(
                                  fontSize: 16.sp,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                
                  if (isSelected)
                    Container(
                      width: 100.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: ColorManager.textPrimary,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Image.asset(
                            IconManager.tiik,
                            height: 21.h,
                            width: 21.w,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            "Today",
                            style: getMedium500Style16(
                              fontSize: 18.sp,
                              color: ColorManager.blackColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  else if (isDone)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: ColorManager.doneContainer,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            IconManager.tiik,
                            height: 21.h,
                            width: 21.w,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            "Done",
                            style: getMedium500Style16(
                              fontSize: 18.sp,
                              color: ColorManager.blackColor,
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),

              SizedBox(height: 10.h),
              Divider(thickness: 1, color: ColorManager.chatTextColorTwo),
              SizedBox(height: 10.h),

              /// ================= WORKOUT LIST =================
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 10.w,
                  runSpacing: 6.h,
                  children: workouts
                      .map(
                        (e) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              IconManager.dot,
                              height: 8.h,
                              width: 8.w,
                              color: ColorManager.textPrimary,
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              e,
                              style: getRegular400Style14(
                                fontSize: 14.sp,
                                color: ColorManager.whiteColor,
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
