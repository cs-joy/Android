// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:iron_ready/core/resource/constansts/color_manger.dart';
// import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
// import 'package:iron_ready/core/resource/style_manager.dart';
// import 'package:iron_ready/core/route/route_name.dart';
// import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
// import 'package:iron_ready/presentation/common%20widget/common_header.dart';
// import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
// import 'package:iron_ready/presentation/common%20widget/password_field.dart';
// import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

// // authentication
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CommonPageGradient(
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Column(
//                 children: [
//                   CommonHeader(
//                     title: "Back to Create Account",
//                     trailing: IconManager.threedot,
//                     onTap: () {},
//                   ),
//                   SizedBox(height: 20.h),

//                   Text(
//                     "create new account",
//                     style: getRegular400Style32(
//                       fontSize: 32.sp,
//                       color: ColorManager.whiteColor,
//                     ),
//                   ),

//                   SizedBox(height: 5.h),

//                   Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Please fill your detail information",
//                       style: getRegular400Style16(
//                         fontSize: 16.sp,
//                         color: ColorManager.whiteColor,
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 25.h),

//                   /// Email
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Full Name",
//                       style: getSemiBold600Style16(
//                         color: Colors.white,
//                         fontSize: 16.sp,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                   CommonTextField(
//                     controller: TextEditingController(),
//                     hintText: "Einstein Graham Bell",
//                     suffixIcon: IconManager.user,
//                   ),

//                   SizedBox(height: 20.h),

//                   /// Email
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Email Address",
//                       style: getSemiBold600Style16(
//                         color: Colors.white,
//                         fontSize: 16.sp,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                   CommonTextField(
//                     controller: TextEditingController(),
//                     hintText: "your email",
//                     suffixIcon: IconManager.email,
//                   ),

//                   SizedBox(height: 20.h),

//                   /// Email
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Create Password",
//                       style: getSemiBold600Style16(
//                         color: Colors.white,
//                         fontSize: 16.sp,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10.h),

//                   PasswordField(
//                     controller: TextEditingController(),
//                     hintText: "Create Password",
//                   ),

//                   SizedBox(height: 20.h),

//                   /// Email
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Re-enter Password",
//                       style: getSemiBold600Style16(
//                         color: Colors.white,
//                         fontSize: 16.sp,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10.h),

//                   PasswordField(
//                     controller: TextEditingController(),
//                     hintText: "Re-enter Password",
//                   ),

//                   SizedBox(height: 20.h),

//                   PrimaryButton(
//                     padding: EdgeInsets.symmetric(horizontal: 2),
//                     backgroundColor: ColorManager.buttonColor,
//                     title: "Register",
//                     onPressed: () {},
//                   ),

//                   SizedBox(height: 20.h),

//                   /// Sign up text
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Already have an account? ",
//                         style: getRegular400Style14(
//                           color: Colors.white,
//                           fontSize: 14.sp,
//                         ),
//                       ),
//                       SizedBox(width: 5.w),
//                       InkWell(
//                         onTap: () {
//                           Navigator.pushNamed(
//                             context,
//                             RouteName.signinScreenRoute,
//                           );
//                         },
//                         child: Text(
//                           "Login",
//                           style: getSemiBold600Style16(
//                             color: ColorManager.textPrimary,
//                             fontSize: 16.sp,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
import 'package:iron_ready/presentation/common%20widget/password_field.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isLoading = false;

  Future<void> registerUser() async {
    if (fullNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Passwords do not match")));
      return;
    }

    setState(() {
      isLoading = true;
    });

    final Uri url = Uri.parse(
      "https://pseudolabial-aimlessly-luisa.ngrok-free.dev/auth/register",
    );

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": "${emailController.text.trim()}",
          "full_name": "${fullNameController.text.trim()}",
          "password": "${passwordController.text.trim()}",
        }),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["message"] ?? "Registered successfully")),
        );

        Navigator.pushNamed(context, RouteName.signinScreenRoute);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["message"] ?? "Registration failed")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

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
                  CommonHeader(
                    title: "Back to Create Account",
                    trailing: IconManager.threedot,
                    onTap: () {},
                  ),
                  SizedBox(height: 20.h),

                  Text(
                    "create new account",
                    style: getRegular400Style32(
                      fontSize: 32.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 5.h),

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Please fill your detail information",
                      style: getRegular400Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 25.h),

                  /// Full Name
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Full Name",
                      style: getSemiBold600Style16(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CommonTextField(
                    controller: fullNameController,
                    hintText: "Einstein Graham Bell",
                    suffixIcon: IconManager.user,
                  ),

                  SizedBox(height: 20.h),

                  /// Email
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

                  SizedBox(height: 20.h),

                  /// Password
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create Password",
                      style: getSemiBold600Style16(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  PasswordField(
                    controller: passwordController,
                    hintText: "Create Password",
                  ),

                  SizedBox(height: 20.h),

                  /// Confirm Password
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Re-enter Password",
                      style: getSemiBold600Style16(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  PasswordField(
                    controller: confirmPasswordController,
                    hintText: "Re-enter Password",
                  ),

                  SizedBox(height: 20.h),

                  PrimaryButton(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    backgroundColor: ColorManager.buttonColor,
                    title: isLoading ? "Please wait..." : "Register",
                    onPressed: isLoading ? null : registerUser,
                  ),

                  SizedBox(height: 20.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: getRegular400Style14(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.signinScreenRoute,
                          );
                        },
                        child: Text(
                          "Login",
                          style: getSemiBold600Style16(
                            color: ColorManager.textPrimary,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
