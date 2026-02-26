import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common widget/common_header.dart';
import 'package:iron_ready/presentation/common widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common widget/primary_button.dart';
import 'package:iron_ready/presentation/information/view/widget/information_field.dart';
import 'package:iron_ready/presentation/information/view/widget/step_indicator.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  int currentStep = 0;

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
                CommonHeader(),

                SizedBox(height: 20.h),

                StepIndicator(totalSteps: 4, currentStep: currentStep),

                SizedBox(height: 30.h),

                Text(
                  "what sport would you like to \ntrain for?",
                  style: getRegular400Style32(
                    fontSize: 32.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 30.h),

                Column(
                  children: [
                    InformationField(
                      title: 'Football',
                      imagepath: IconManager.football,
                    ),
                    SizedBox(height: 15.h),
                    InformationField(
                      title: 'Combat',
                      imagepath: IconManager.combat,
                    ),
                  ],
                ),

                const Spacer(),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Next",
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.informationSelectionScreenRoute,
                      arguments: 1,
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
