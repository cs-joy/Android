import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/presentation/common%20widget/weekly_training_card.dart';

class WeeklyContainer extends StatefulWidget {
  const WeeklyContainer({super.key});

  @override
  State<WeeklyContainer> createState() => _WeeklyContainerState();
}

class _WeeklyContainerState extends State<WeeklyContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WeeklyTrainingCard(
          dayShort: "Sat",
          date: "11",
          dayName: "Saturday",
          muscle: "Upper Body",
          duration: "45 min",
          workouts: ["Bench Press", "Overhead Press", "Dips"],
          isSelected: selectedIndex == 1,
          isDone: true,
          onTap: () => setState(() => selectedIndex = 0),
        ),

        SizedBox(height: 15.h),

        WeeklyTrainingCard(
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

        WeeklyTrainingCard(
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
        WeeklyTrainingCard(
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
          isSelected: selectedIndex == 0,
          isDone: false,
          onTap: () => setState(() => selectedIndex = 3),
        ),

        SizedBox(height: 15.h),

        WeeklyTrainingCard(
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

        WeeklyTrainingCard(
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

        WeeklyTrainingCard(
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
