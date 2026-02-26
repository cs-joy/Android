import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/common widget/common_header.dart';
import 'package:iron_ready/presentation/common widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common widget/primary_button.dart';
import 'package:iron_ready/presentation/information/view/widget/information_field.dart';
import 'package:iron_ready/presentation/information/view/widget/step_indicator.dart';
import 'package:iron_ready/core/route/route_name.dart';

class InformationSelectionScreen extends StatefulWidget {
  const InformationSelectionScreen({super.key});

  @override
  State<InformationSelectionScreen> createState() =>
      _InformationSelectionScreenState();
}

class _InformationSelectionScreenState
    extends State<InformationSelectionScreen> {
  late int currentStep;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    currentStep = ModalRoute.of(context)?.settings.arguments as int? ?? 1;
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
                      title: 'Boxing',
                      imagepath: IconManager.combat,
                    ),
                    SizedBox(height: 15.h),
                    InformationField(
                      title: 'Judo',
                      imagepath: IconManager.judo,
                    ),
                    SizedBox(height: 15.h),
                    InformationField(
                      title: 'Karate',
                      imagepath: IconManager.karate,
                    ),
                    SizedBox(height: 15.h),
                    InformationField(
                      title: 'Wresting',
                      imagepath: IconManager.wrest,
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
                      RouteName.shareInformationScreenRoute, 
                      arguments: currentStep + 1, 
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
