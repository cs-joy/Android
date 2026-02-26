import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;
  Timer? _timer;

  final List<String> bgImages = [
    ImageManager.splash,
    ImageManager.futebol,
    ImageManager.ball,
  ];

  final List<String> titles = [
    "Train like an athlete",
    "Built for Your Sport",
    "PRECISION POWER. OPTIMAL REST.",
  ];

  final List<String> subtitles = [
    "Personalized training and recovery built for \nyour sport and performance level.",
    "Pick your sport and get plans designed for \nyour body and performance.",
    "Track recovery and fatigue to make smarter \ntraining and rest decisions.",
  ];

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      if (!mounted) return;

      if (currentIndex < bgImages.length - 1) {
        setState(() {
          currentIndex++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void onContinuePressed() {
    _timer?.cancel();
    Navigator.pushReplacementNamed(context, RouteName.signinScreenRoute);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: List.generate(bgImages.length, (index) {
              return AnimatedPositioned(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut,
                left: (index - currentIndex) * width,
                top: 0,
                bottom: 0,
                width: width,
                child: CommonGradient(
                  backgroundImage: bgImages[index],
                  child: const SizedBox.expand(),
                ),
              );
            }),
          ),

          Stack(
            children: [
              Positioned(
                top: 350.h,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset(IconManager.splashLogo, width: 160.w),
                ),
              ),

              Positioned(
                left: 0,
                right: 0,
                bottom: 100.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      titles[currentIndex],
                      textAlign: TextAlign.center,
                      style: getRegular400Style32(
                        fontSize: 32.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    Text(
                      subtitles[currentIndex],
                      textAlign: TextAlign.center,
                      style: getRegular400Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),

                    SizedBox(height: 30.h),

                    PrimaryButton(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      backgroundColor: ColorManager.buttonColor,
                      title: "Continue",
                      onPressed: onContinuePressed,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
