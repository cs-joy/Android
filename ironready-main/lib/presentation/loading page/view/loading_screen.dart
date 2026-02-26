import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, RouteName.splashRoute);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.blackColor,
      // backgroundColor: Color(value),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            /// 🔝 TOP: Logo
            Positioned(
              top: 120.h,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  IconManager.splashLogo,
                  width: 270.w,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                ImageManager.loading,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
