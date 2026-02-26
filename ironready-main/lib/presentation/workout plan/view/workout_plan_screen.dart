
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/workout%20plan/view/widget/today_weekly_button.dart';
import 'package:iron_ready/presentation/workout%20plan/view/widget/today_workout_day_card.dart';
import 'package:iron_ready/presentation/workout%20plan/view/widget/weekly_workout_day_card.dart';

class WorkoutPlanScreen extends StatefulWidget {
  const WorkoutPlanScreen({super.key});

  @override
  State<WorkoutPlanScreen> createState() => _WorkoutPlanScreenState();
}

class _WorkoutPlanScreenState extends State<WorkoutPlanScreen> {
  bool isWeekly = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 10.h),

                  Text(
                    "Get ready",
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

                  SizedBox(height: 20.h),

                  TodayWeeklyButton(
                    isWeeklySelected: isWeekly,
                    onTodayTap: () {
                      setState(() => isWeekly = false);
                    },
                    onWeeklyTap: () {
                      setState(() => isWeekly = true);
                    },
                  ),

                  SizedBox(height: 20.h),

                  /// 🔽 TODAY / WEEKLY SWITCH
                  isWeekly ? weeklyContainer() : todayContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
  Widget todayContainer() {
    return Column(
      children: [
        TodayWorkoutDayCard(
          dayShort: "Sat",
          date: "11",
          dayName: "Saturday",
          muscle: "Upper Body",
          duration: "45 min",
          workouts: ["Bench Press", "Overhead Press", "Dips"],
          isSelected: selectedIndex == 0,
          onTap: () => setState(() => selectedIndex = 0),
        ),
      ],
    );
  }


Widget weeklyContainer() {
  return Column(
    children: [
      WeeklyWorkoutDayCard(
        dayShort: "Sat",
        date: "11",
        dayName: "Saturday",
        muscle: "Upper Body",
        duration: "45 min",
        workouts: ["Bench Press", "Overhead Press", "Dips"],
        isSelected: selectedIndex == 0,
        isDone: true,
        onTap: () => setState(() => selectedIndex = 0),
      ),

      SizedBox(height: 15.h),

      WeeklyWorkoutDayCard(
        dayShort: "Sun",
        date: "12",
        dayName: "Sunday",
        muscle: "Back",
        duration: "35 min",
        workouts: ["Deadlift", "Pull-Ups", "Bent Over Row"],
        isSelected: selectedIndex == 1,
        isDone: true,
        onTap: () => setState(() => selectedIndex = 1),
      ),

      SizedBox(height: 15.h),

      WeeklyWorkoutDayCard(
        dayShort: "Mon",
        date: "13",
        dayName: "Monday",
        muscle: "Legs",
        duration: "40 min",
        workouts: ["Squats", "Lunges", "Leg Press"],
        isSelected: selectedIndex == 2,
        isDone: true,
        onTap: () => setState(() => selectedIndex = 2),
      ),

      SizedBox(height: 15.h),

      /// ✅ TODAY
      WeeklyWorkoutDayCard(
        dayShort: "Tue",
        date: "14",
        dayName: "Tuesday",
        muscle: "Chest",
        duration: "60 min",
        workouts: [
          "Flat Bench Press",
          "Incline Bench Press",
          "Decline Bench Press",
        ],
        isSelected: selectedIndex == 3,
        isDone: false,
        onTap: () => setState(() => selectedIndex = 3),
      ),

      SizedBox(height: 15.h),

      WeeklyWorkoutDayCard(
        dayShort: "Wed",
        date: "15",
        dayName: "Wednesday",
        muscle: "Arms",
        duration: "25 min",
        workouts: ["Barbell Curl", "Triceps Dips", "Hammer Curl"],
        isSelected: selectedIndex == 4,
        isDone: false,
        onTap: () => setState(() => selectedIndex = 4),
      ),

      SizedBox(height: 15.h),

      WeeklyWorkoutDayCard(
        dayShort: "Thu",
        date: "16",
        dayName: "Thursday",
        muscle: "Core",
        duration: "20 min",
        workouts: ["Plank", "Hanging Leg Raise", "Russian Twist"],
        isSelected: selectedIndex == 5,
        isDone: false,
        onTap: () => setState(() => selectedIndex = 5),
      ),

      SizedBox(height: 15.h),

      WeeklyWorkoutDayCard(
        dayShort: "Fri",
        date: "17",
        dayName: "Friday",
        muscle: "Full Body",
        duration: "45 min",
        workouts: ["Clean & Press", "Kettlebell Swing", "Burpees"],
        isSelected: selectedIndex == 6,
        isDone: false,
        onTap: () => setState(() => selectedIndex = 6),
      ),
    ],
  );
}

}
