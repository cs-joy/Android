import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_otp_field.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

class ForgotOtp extends StatefulWidget {
  const ForgotOtp({super.key});

  @override
  State<ForgotOtp> createState() => _ForgotOtpState();
}

class _ForgotOtpState extends State<ForgotOtp> {
  final String email = "kazishayem@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                CommonHeader(
                  title: "otp",
                  titleStyle: getRegular400Style24(
                    fontSize: 24.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Enter your otp",
                  style: getRegular400Style32(
                    fontSize: 32.sp,

                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(height: 1.7),
                  "To verify email address, please enter \nthe OTP sent to your email: \n${email}",
                  style: getRegular400Style16(
                    fontSize: 16.sp,

                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                CommonOtpField(
                  length: 6,
                  onCompleted: (otp) {
                    debugPrint('OTP is: $otp');
                  },
                ),

                SizedBox(height: 25.h),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Verify",
                  onPressed: () {
                     Navigator.pushNamed(context, RouteName.resetPasswordScreenRoute);
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
