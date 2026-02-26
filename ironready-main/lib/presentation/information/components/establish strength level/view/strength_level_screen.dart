import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/information/components/establish%20strength%20level/view/widget/common_strength_field.dart';
import 'package:iron_ready/presentation/information/view/widget/step_indicator.dart';

class StrengthLevelScreen extends StatefulWidget {
  const StrengthLevelScreen({super.key});

  @override
  State<StrengthLevelScreen> createState() => _StrengthLevelScreenState();
}

class _StrengthLevelScreenState extends State<StrengthLevelScreen> {
  int currentStep = 3;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args = ModalRoute.of(context)?.settings.arguments as int?;

    if (args != null) {
      currentStep = args;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// HEADER
                const CommonHeader(),

                SizedBox(height: 20.h),

                /// STEP INDICATOR
                StepIndicator(totalSteps: 4, currentStep: currentStep),

                SizedBox(height: 30.h),

                Text(
                  "establish your strength level",
                  style: getRegular400Style32(
                    fontSize: 32.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "Please enter your best counts that make you motivated.",
                  style: getRegular400Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Bench Press (1RM)",
                  style: getBold700Style18(
                    fontSize: 18.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                CommonStrengthField(
                  hintText: "Enter bench press max",
                  meter: "lbs",
                ),

                SizedBox(height: 20.h),

                Text(
                  "Back Squat (1RM)",
                  style: getBold700Style18(
                    fontSize: 18.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                CommonStrengthField(
                  hintText: "Enter back squat max",
                  meter: "lbs",
                ),

                SizedBox(height: 20.h),

                Text(
                  "Vertical Jump",
                  style: getBold700Style18(
                    fontSize: 18.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                CommonStrengthField(
                  hintText: "Enter height in inches",
                  meter: "Inch",
                ),

                const Spacer(),
                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Next",
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.mainLayoutRoute
                    );
                  },
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
