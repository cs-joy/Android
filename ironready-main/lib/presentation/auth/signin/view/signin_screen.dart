// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod/legacy.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:iron_ready/core/resource/constansts/color_manger.dart';
// import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
// import 'package:iron_ready/core/resource/style_manager.dart';
// import 'package:iron_ready/core/route/route_name.dart';
// import 'package:iron_ready/presentation/auth/signin/view/widget/divider.dart';
// import 'package:iron_ready/presentation/auth/signin/view/widget/remember_me.dart';
// import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
// import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
// import 'package:iron_ready/presentation/common%20widget/password_field.dart';
// import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
// import 'package:iron_ready/presentation/common%20widget/social_auth_button.dart';

// final emailControllerProvider = Provider.autoDispose<TextEditingController>(
//   (ref) => TextEditingController(text: "mytest@gmail.com"),
// );

// final passwordControllerProvider = Provider.autoDispose<TextEditingController>(
//   (ref) => TextEditingController(text: "123456"),
// );

// final rememberMeProvider = StateProvider<bool>((ref) => false);
// final emailErrorProvider = StateProvider<String?>((ref) => null);
// final passwordErrorProvider = StateProvider<String?>((ref) => null);

// class SigninScreen extends ConsumerStatefulWidget {
//   const SigninScreen({super.key});

//   @override
//   ConsumerState<SigninScreen> createState() => _SigninScreenState();
// }

// class _SigninScreenState extends ConsumerState<SigninScreen> {
//   bool rememberMe = false;

//   @override
//   Widget build(BuildContext context) {
//     final emailController = ref.watch(emailControllerProvider);
//     final passwordController = ref.watch(passwordControllerProvider);
//     final rememberMe = ref.watch(rememberMeProvider);
//     final emailError = ref.watch(emailErrorProvider);
//     final passwordError = ref.watch(passwordErrorProvider);
//     return Scaffold(
//       body: CommonPageGradient(
//         child: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 SizedBox(height: 20.h),

//                 Text(
//                   "Welcome back",
//                   textAlign: TextAlign.center,
//                   style: getRegular400Style32(
//                     color: Colors.white,
//                     fontSize: 32.sp,
//                   ),
//                 ),

//                 SizedBox(height: 10.h),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Don’t have an account?",
//                       style: getRegular400Style14(
//                         color: Colors.white,
//                         fontSize: 14.sp,
//                       ),
//                     ),
//                     SizedBox(width: 5.w),
//                     InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           RouteName.signupScreenRoute,
//                         );
//                       },
//                       child: Text(
//                         "Sign Up",
//                         style: getRegular400Style14(
//                           color: ColorManager.textPrimary,
//                           fontSize: 14.sp,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 25.h),

//                 Text(
//                   "Email Address",
//                   style: getSemiBold600Style16(
//                     color: Colors.white,
//                     fontSize: 16.sp,
//                   ),
//                 ),
//                 SizedBox(height: 10.h),
//                 CommonTextField(
//                   controller: emailController,
//                   hintText: "Enter your email address",
//                 ),

//                 if (emailError != null) ...[
//                   SizedBox(height: 6.h),
//                   Text(
//                     emailError,
//                     style: getRegular400Style14(
//                       color: Colors.redAccent,
//                       fontSize: 12.sp,
//                     ),
//                   ),
//                 ],

//                 SizedBox(height: 20.h),

//                 Text(
//                   "Password",
//                   style: getSemiBold600Style16(
//                     color: Colors.white,
//                     fontSize: 16.sp,
//                   ),
//                 ),
//                 SizedBox(height: 10.h),

//                 PasswordField(
//                   controller: passwordController,
//                   hintText: "Enter your password",
//                 ),

//                 if (passwordError != null) ...[
//                   SizedBox(height: 6.h),
//                   Text(
//                     passwordError,
//                     style: getRegular400Style14(
//                       color: Colors.redAccent,
//                       fontSize: 12.sp,
//                     ),
//                   ),
//                 ],

//                 SizedBox(height: 20.h),

//                 /// Remember me
//                 InkWell(
//                   onTap: () {
//                     ref.read(rememberMeProvider.notifier).state = !rememberMe;
//                   },
//                   child: RememberMeRow(
//                     value: rememberMe,
//                     onTap: () {},
//                     onForgotTap: () {
//                       Navigator.pushNamed(
//                         context,
//                         RouteName.forgotPasswordScreen,
//                       );
//                     },
//                   ),
//                 ),

//                 SizedBox(height: 40.h),

//                 PrimaryButton(
//                   backgroundColor: ColorManager.buttonColor,
//                   title: "Sign In",
//                   onPressed: () {
//                     final email = emailController.text.trim();
//                     final password = passwordController.text.trim();

//                     void showEmailError(String message) {
//                       ref.read(emailErrorProvider.notifier).state = message;
//                       Future.delayed(const Duration(seconds: 1), () {
//                         if (mounted) {
//                           ref.read(emailErrorProvider.notifier).state = null;
//                         }
//                       });
//                     }

//                     void showPasswordError(String message) {
//                       ref.read(passwordErrorProvider.notifier).state = message;
//                       Future.delayed(const Duration(seconds: 1), () {
//                         if (mounted) {
//                           ref.read(passwordErrorProvider.notifier).state = null;
//                         }
//                       });
//                     }

//                     bool hasError = false;
//                     if (email.isEmpty) {
//                       showEmailError("Email is required");
//                       hasError = true;
//                     } else if (!email.contains('@')) {
//                       showEmailError("Enter a valid email");
//                       hasError = true;
//                     }

//                     if (password.isEmpty) {
//                       showPasswordError("Password is required");
//                       hasError = true;
//                     } else if (password.length < 6) {
//                       showPasswordError(
//                         "Password must be at least 6 characters",
//                       );
//                       hasError = true;
//                     }

//                     if (hasError) return;

//                     // emailController.clear();
//                     // passwordController.clear();
//                     // ref.read(emailErrorProvider.notifier).state = null;
//                     // ref.read(passwordErrorProvider.notifier).state = null;

//                     Navigator.pushNamed(
//                       context,
//                       RouteName.informationScreenRoute,
//                     );
//                   },
//                 ),

//                 SizedBox(height: 30.h),
//                 OrDivider(),
//                 SizedBox(height: 25.h),

//                 /// Social buttons
//                 Row(
//                   children: [
//                     Expanded(
//                       child: SocialAuthButton(
//                         text: "Google",
//                         iconpath: IconManager.google,
//                         onTap: () {},
//                       ),
//                     ),
//                     SizedBox(width: 10.w),
//                     Expanded(
//                       child: SocialAuthButton(
//                         text: "Apple",
//                         iconpath: IconManager.apple,
//                         onTap: () {},
//                       ),
//                     ),
//                   ],
//                 ),

//                 SizedBox(height: 20.h),

//                 /// Sign up text
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Don’t have an account?",
//                       style: getRegular400Style14(
//                         color: Colors.white,
//                         fontSize: 14.sp,
//                       ),
//                     ),
//                     SizedBox(width: 5.w),
//                     InkWell(
//                       onTap: () {
//                         Navigator.pushNamed(
//                           context,
//                           RouteName.signupScreenRoute,
//                         );
//                       },
//                       child: Text(
//                         "Create",
//                         style: getSemiBold600Style16(
//                           color: ColorManager.textPrimary,
//                           fontSize: 16.sp,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/auth/signin/view/widget/divider.dart';
import 'package:iron_ready/presentation/auth/signin/view/widget/remember_me.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
import 'package:iron_ready/presentation/common%20widget/password_field.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/common%20widget/social_auth_button.dart';

final emailControllerProvider = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(text: "mytest@gmail.com"),
);

final passwordControllerProvider = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(text: "123456"),
);

final rememberMeProvider = StateProvider<bool>((ref) => false);
final emailErrorProvider = StateProvider<String?>((ref) => null);
final passwordErrorProvider = StateProvider<String?>((ref) => null);
final loginLoadingProvider = StateProvider<bool>((ref) => false);

class SigninScreen extends ConsumerStatefulWidget {
  const SigninScreen({super.key});

  @override
  ConsumerState<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends ConsumerState<SigninScreen> {
  Future<void> loginUser() async {
    final emailController = ref.read(emailControllerProvider);
    final passwordController = ref.read(passwordControllerProvider);

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    ref.read(loginLoadingProvider.notifier).state = true;

    final url = Uri.parse(
      "https://pseudolabial-aimlessly-luisa.ngrok-free.dev/auth/login",
    );

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"email": email, "password": password}),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();

        await prefs.setString("access_token", data["access_token"]);
        await prefs.setString("refresh_token", data["refresh_token"]);

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Login successful")));

        Navigator.pushNamed(context, RouteName.informationScreenRoute);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["detail"] ?? "Login failed")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }

    ref.read(loginLoadingProvider.notifier).state = false;
  }

  Future<void> loginWithGoogle() async {
    ref.read(loginLoadingProvider.notifier).state = true;

    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        ref.read(loginLoadingProvider.notifier).state = false;
        return; // user cancelled
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final String? idToken = googleAuth.idToken;

      if (idToken == null) {
        throw Exception("Google ID Token is null");
      }

      final url = Uri.parse(
        "https://pseudolabial-aimlessly-luisa.ngrok-free.dev/auth/google/login",
      );

      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"id_token": idToken}),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();

        await prefs.setString("access_token", data["access_token"]);
        await prefs.setString("refresh_token", data["refresh_token"]);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Google login successful")),
        );

        Navigator.pushNamed(context, RouteName.informationScreenRoute);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["detail"] ?? "Google login failed")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }

    ref.read(loginLoadingProvider.notifier).state = false;
  }

  @override
  Widget build(BuildContext context) {
    final emailController = ref.watch(emailControllerProvider);
    final passwordController = ref.watch(passwordControllerProvider);
    final rememberMe = ref.watch(rememberMeProvider);
    final isLoading = ref.watch(loginLoadingProvider);

    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.h),

                Text(
                  "Welcome back",
                  textAlign: TextAlign.center,
                  style: getRegular400Style32(
                    color: Colors.white,
                    fontSize: 32.sp,
                  ),
                ),

                SizedBox(height: 25.h),

                Text(
                  "Email Address",
                  style: getSemiBold600Style16(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                CommonTextField(
                  controller: emailController,
                  hintText: "Enter your email address",
                ),

                SizedBox(height: 20.h),

                Text(
                  "Password",
                  style: getSemiBold600Style16(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),

                PasswordField(
                  controller: passwordController,
                  hintText: "Enter your password",
                ),

                SizedBox(height: 20.h),

                InkWell(
                  onTap: () {
                    ref.read(rememberMeProvider.notifier).state = !rememberMe;
                  },
                  child: RememberMeRow(
                    value: rememberMe,
                    onTap: () {},
                    onForgotTap: () {
                      Navigator.pushNamed(
                        context,
                        RouteName.forgotPasswordScreen,
                      );
                    },
                  ),
                ),

                SizedBox(height: 40.h),

                PrimaryButton(
                  backgroundColor: ColorManager.buttonColor,
                  title: isLoading ? "Please wait..." : "Sign In",
                  onPressed: isLoading ? null : loginUser,
                ),

                SizedBox(height: 30.h),
                OrDivider(),
                SizedBox(height: 25.h),

                Row(
                  children: [
                    Expanded(
                      child: SocialAuthButton(
                        text: "Google",
                        iconpath: IconManager.google,
                        onTap: loginWithGoogle, //() {},
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: SocialAuthButton(
                        text: "Apple",
                        iconpath: IconManager.apple,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                /// Sign up text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
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
                          RouteName.signupScreenRoute,
                        );
                      },
                      child: Text(
                        "Create",
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
    );
  }
}
