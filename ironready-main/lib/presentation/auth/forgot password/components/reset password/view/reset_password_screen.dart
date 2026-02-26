import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
import 'package:iron_ready/presentation/common%20widget/password_field.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

import '../../../../../../core/route/route_name.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

    final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CommonHeader(
                  title: "Reset Password",
                  titleStyle: getRegular400Style24(
                    fontSize: 24.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: getSemiBold600Style16(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                PasswordField(
                  controller: passwordController,
                  hintText: "Password",
                ),

                SizedBox(height: 15.h),

                /// Email
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Confirm Password",
                    style: getSemiBold600Style16(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
           
                PasswordField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                ),

                SizedBox(height: 20.h),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Reset Password",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.signinScreenRoute);
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
