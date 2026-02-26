import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common widget/primary_button.dart';
import 'package:iron_ready/presentation/global state/training_progress.dart';
import 'package:iron_ready/presentation/training/view/widget/exercise_item.dart';


Widget TodayContainer(BuildContext context) {
  final bool allCompleted =
      TrainingProgress.flatBenchCompleted &&
      TrainingProgress.inclineBenchCompleted &&
      TrainingProgress.declineBenchCompleted;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3),
    child: Column(
      children: [
        Image.asset(ImageManager.training),

        SizedBox(height: 10.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Chest Muscles",
              style: getSemiBold600Style16(
                fontSize: 16.sp,
                color: ColorManager.whiteColor,
              ),
            ),
            Text(
              "60 Minutes • 3 Exercise",
              style: getRegular400Style14(
                fontSize: 14.sp,
                color: ColorManager.whiteColor,
              ),
            ),
          ],
        ),

        SizedBox(height: 25.h),

        ExerciseItem(
          title: "Flat Bench Press",
          image: ImageManager.training1,
          isCompleted: TrainingProgress.flatBenchCompleted,
        ),

        ExerciseItem(
          title: "Incline Bench Press",
          image: ImageManager.training2,
          isCompleted: TrainingProgress.inclineBenchCompleted,
        ),

        ExerciseItem(
          title: "Decline Bench Press",
          image: ImageManager.training3,
          showBar: false,
          isCompleted: TrainingProgress.declineBenchCompleted,
        ),

        SizedBox(height: 30.h),

        PrimaryButton(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          backgroundColor: ColorManager.buttonColor,
          title: allCompleted ? "Completed" : "Start Training",
          onPressed: () {
            /// If all completed → reset + go to completed screen
            if (TrainingProgress.flatBenchCompleted &&
                TrainingProgress.inclineBenchCompleted &&
                TrainingProgress.declineBenchCompleted) {
              TrainingProgress.resetChestTraining();

              Navigator.pushNamed(
                context,
                RouteName.exerciseCompletedScreenRoute,
              );
              return;
            }

            /// If starting fresh → go to warmup screen
            if (!TrainingProgress.flatBenchCompleted &&
                !TrainingProgress.inclineBenchCompleted &&
                !TrainingProgress.declineBenchCompleted) {
              Navigator.pushNamed(context, RouteName.readyWarmupScreenRoute);
              return;
            }

            /// Normal flow after warmup
            if (!TrainingProgress.flatBenchCompleted) {
              Navigator.pushNamed(context, RouteName.flatBenchPressScreenRoute);
              return;
            }

            if (!TrainingProgress.inclineBenchCompleted) {
              Navigator.pushNamed(
                context,
                RouteName.inclineBenchPressScreenRoute,
              );
              return;
            }

            if (!TrainingProgress.declineBenchCompleted) {
              Navigator.pushNamed(
                context,
                RouteName.declineBenchPressScreenRoute,
              );
              return;
            }
          },
        ),

        SizedBox(height: 15.h),
      ],
    ),
  );
}
