import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/weekly_container.dart';
import 'package:iron_ready/presentation/training/view/widget/today_container.dart';
import 'package:iron_ready/presentation/workout%20plan/view/widget/today_weekly_button.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
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
                    "Training",
                    style: getRegular400Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 5.h),

                  Text(
                    "Today’s Performance Plan",
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

                  isWeekly ? WeeklyContainer() : TodayContainer(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
