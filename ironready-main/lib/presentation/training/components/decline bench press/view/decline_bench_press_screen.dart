import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common widget/common_header.dart';
import 'package:iron_ready/presentation/common widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common widget/instruction_box.dart';
import 'package:iron_ready/presentation/common widget/primary_button.dart';
import 'package:iron_ready/presentation/global state/training_progress.dart';

class DeclineBenchPressScreen extends StatefulWidget {
  const DeclineBenchPressScreen({super.key});

  @override
  State<DeclineBenchPressScreen> createState() =>
      _DeclineBenchPressScreenState();
}

class _DeclineBenchPressScreenState extends State<DeclineBenchPressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CommonHeader(
                  title: "Decline Bench Press",
                  titleStyle: getRegular400Style24(
                    fontSize: 24.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Image.asset(ImageManager.gym),

                SizedBox(height: 20.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Real-Time Guidance",
                    style: getSemiBold600Style16(
                      fontSize: 16.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ),

                SizedBox(height: 15.h),

                InstructionBox(
                  instructions: [
                    "Secure your feet",
                    "Wider than shoulder grip",
                    "Lower to lower chest",
                    "Avoid locking elbows",
                  ],
                ),

                SizedBox(height: 15.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Set’s Information",
                    style: getSemiBold600Style16(
                      fontSize: 16.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ),

                SizedBox(height: 10.h),

                InstructionBox(
                  instructions: ["Sets: 3", "20 Minutes", "135 ibs / 61 kg"],
                ),

                SizedBox(height: 30.h),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Done",
                  onPressed: () {
                    TrainingProgress.declineBenchCompleted = true;
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RouteName.trainingScreenRoute,
                      (route) => false,
                    );
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
