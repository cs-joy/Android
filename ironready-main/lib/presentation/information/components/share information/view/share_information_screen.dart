import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/information/components/share%20information/view/widget/form_field.dart';
import 'package:iron_ready/presentation/information/components/share%20information/view/widget/gender_dropdown.dart';
import 'package:iron_ready/presentation/information/components/share%20information/view/widget/unit_field.dart';
import 'package:iron_ready/presentation/information/view/widget/step_indicator.dart';

class ShareInformationScreen extends StatefulWidget {
  const ShareInformationScreen({super.key});

  @override
  State<ShareInformationScreen> createState() => _ShareInformationScreenState();
}

class _ShareInformationScreenState extends State<ShareInformationScreen> {
  int currentStep = 2;
  bool _isSelected = false;
  String? gender;

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
                  "Share your information",
                  style: getRegular400Style32(
                    fontSize: 32.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "Please enter your valid information. Your information would help Iron Ready to make the best plan.",
                  style: getRegular400Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Your Birthday",
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 15.h),

                Row(
                  children: [
                    CommonFormField(
                      hintText: "Day",
                      controller: TextEditingController(),
                    ),
                    SizedBox(width: 10.w),
                    CommonFormField(
                      hintText: "MM",
                      controller: TextEditingController(),
                    ),
                    SizedBox(width: 10.w),
                    CommonFormField(
                      hintText: "YYYY",
                      controller: TextEditingController(),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),
                Text(
                  "Your Gender",
                  style: getBold700Style18(
                    fontSize: 18.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                GenderDropdown(
                  value: gender,
                  onChanged: (val) {
                    setState(() {
                      gender = val;
                    });
                  },
                ),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UnitField(
                      controller: TextEditingController(),
                      label: "Your Height",
                      hintText: "176",
                      unit: "cm",
                    ),

                    UnitField(
                      controller: TextEditingController(),
                      label: "Your Weight",
                      hintText: "e.g. 56",
                      unit: "kg",
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
                      RouteName.strengthLevelScreenRoute,
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
