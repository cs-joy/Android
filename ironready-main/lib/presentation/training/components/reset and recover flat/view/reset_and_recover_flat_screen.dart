import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common widget/common_header.dart';
import 'package:iron_ready/presentation/common widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common widget/primary_button.dart';
import 'package:iron_ready/presentation/common%20widget/reset_instruction_box.dart';
import 'package:iron_ready/presentation/global%20state/training_progress.dart';

class ResetAndRecoverFlatScreen extends StatefulWidget {
  const ResetAndRecoverFlatScreen({super.key});

  @override
  State<ResetAndRecoverFlatScreen> createState() =>
      _ResetAndRecoverFlatScreenState();
}

class _ResetAndRecoverFlatScreenState extends State<ResetAndRecoverFlatScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;

  final int totalSeconds = 1;
  int seconds = 1;
  bool isCompleted = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: totalSeconds),
    )..forward();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
        setState(() {
          isCompleted = true;
        });
      } else {
        setState(() {
          seconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CommonHeader(
                    title: "reset & recover",
                    titleStyle: getRegular400Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  SizedBox(
                    height: 170.h,
                    width: 170.w,
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return CustomPaint(
                          painter: _CircularPainter(
                            progress: _controller.value,
                          ),
                          child: Center(
                            child: Text(
                              isCompleted ? "Completed" : "${seconds}s",
                              textAlign: TextAlign.center,
                              style: getSemiBold600Style25(
                                fontSize: isCompleted ? 25.sp : 48.sp,
                                color: ColorManager.textPrimary,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Text(
                    "Allow your muscles to recover before \nthe next set",
                    textAlign: TextAlign.center,
                    style: getRegular400Style14(
                      fontSize: 14.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Container(
                    width: double.infinity,
                    height: 90.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.h),
                      border: Border.all(color: ColorManager.textPrimary),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageManager.bodybuilder,
                              height: 70.h,
                              width: 70.w,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Next",
                                        style: getRegular400Style14(
                                          fontSize: 14.sp,
                                          color: Colors.white54,
                                        ),
                                      ),
                                      Text(
                                        "20 Minutes",
                                        style: getRegular400Style16(
                                          fontSize: 16.sp,
                                          color: ColorManager.whiteColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Text(
                                    "Incline Bench Press",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: getSemiBold600Style16(
                                      fontSize: 16.sp,
                                      color: ColorManager.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.h),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recovery Context",
                      style: getSemiBold600Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 15.h),

                  Container(
                    width: double.infinity,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFF171717),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          "Muscle Focused: Chest • Front Delts • Triceps",
                          style: getRegular400Style14(
                            fontSize: 14.sp,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          "CNS Load: Medium Load Recovery",
                          style: getRegular400Style14(
                            fontSize: 14.sp,
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15.h),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recovery Guidance",
                      style: getSemiBold600Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 15.h),

                  ResetInstructionBox(
                    instructions: const [
                      "Slow breathing recommended",
                      "Hydrate if needed",
                    ],
                  ),

                  SizedBox(height: 30.h),

                  // PrimaryButton(
                  //   padding: EdgeInsets.symmetric(horizontal: 2.w),

                  //   backgroundColor: isCompleted
                  //       ? ColorManager.buttonColor
                  //       : const Color(0xFF394500),

                  //   title: "Next Step",

                  //   onPressed: () {
                  //     if (!isCompleted) return;

                  //     Navigator.pushNamed(
                  //       context,
                  //       RouteName.trainingDetailsScreenRoute,
                  //     );
                  //   },
                  // ),

                  //            PrimaryButton(
                  //   padding: EdgeInsets.symmetric(horizontal: 2.w),

                  //   backgroundColor: isCompleted
                  //       ? ColorManager.buttonColor
                  //       : const Color(0xFF394500),

                  //   title: "Next Step",

                  //   onPressed: () {
                  //     if (!isCompleted) return;

                  //     Navigator.pushNamed(
                  //       context,
                  //       RouteName.trainingScreenRoute,
                  //     );
                  //   },
                  // ),
                  PrimaryButton(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    backgroundColor: isCompleted
                        ? ColorManager.buttonColor
                        : const Color(0xFF394500),
                    title: "Next Step",
                    onPressed: () {
                      if (!isCompleted) return;

                      /// Mark this exercise as completed
                      TrainingProgress.flatBenchCompleted = true;

                      /// Go back to training screen
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RouteName.trainingScreenRoute,
                        (route) => false,
                      );
                    },
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

/// 🎨 Smooth circular painter
class _CircularPainter extends CustomPainter {
  final double progress;

  _CircularPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2;

    final backgroundPaint = Paint()
      ..color = Colors.white12
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final progressPaint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFFdcf24b), Color(0xFF718a01)],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..strokeWidth = 13
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, backgroundPaint);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      2 * pi * progress,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
