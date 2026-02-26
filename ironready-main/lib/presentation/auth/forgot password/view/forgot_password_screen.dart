import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

final emailControllerProvider = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(text: "mytest@gmail.com"),
);
final emailErrorProvider = StateProvider<String?>((ref) => null);

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final emailController = ref.watch(emailControllerProvider);
    final emailError = ref.watch(emailErrorProvider);
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CommonHeader(
                  title: "Forgot password",
                  titleStyle: getRegular400Style24(
                    fontSize: 24.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Forgot password",
                  style: getRegular400Style32(
                    fontSize: 32.sp,

                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  textAlign: TextAlign.center,
                  "Please enter your email address to \nreset password",
                  style: getRegular400Style16(
                    fontSize: 16.sp,

                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email Address",
                    style: getSemiBold600Style16(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                CommonTextField(
                  controller: emailController,
                  hintText: "your email",
                  suffixIcon: IconManager.email,
                ),
                if (emailError != null) ...[
                  SizedBox(height: 6.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      emailError,
                      style: getRegular400Style14(
                        color: Colors.redAccent,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],

                SizedBox(height: 25.h),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Send otp",
                  onPressed: () {
                    final email = emailController.text.trim();

                    void showError(String message) {
                      ref.read(emailErrorProvider.notifier).state = message;

                      Future.delayed(const Duration(seconds: 1), () {
                        if (mounted) {
                          ref.read(emailErrorProvider.notifier).state = null;
                        }
                      });
                    }

                    if (email.isEmpty) {
                      showError("Email is required");
                      return;
                    }

                    if (!email.contains('@')) {
                      showError("Enter a valid email");
                      return;
                    }

                    Navigator.pushNamed(context, RouteName.forgotOtpRoute);
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
