import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/body%20diagram/view/widget/diagram_alart_card.dart';
import 'package:iron_ready/presentation/body%20diagram/view/widget/info_text.dart';
import 'package:iron_ready/presentation/body%20diagram/view/widget/time_item.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';

class BodyDiagramScreen extends StatefulWidget {
  const BodyDiagramScreen({super.key});

  @override
  State<BodyDiagramScreen> createState() => _BodyDiagramScreenState();
}

class _BodyDiagramScreenState extends State<BodyDiagramScreen> {
  bool isRotated = false;
  late Timer _timer;

  int totalSeconds = 2 * 24 * 60 * 60;
  int remainingSeconds = 2 * 24 * 60 * 60;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() => remainingSeconds--);
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String get days => (remainingSeconds ~/ 86400).toString().padLeft(2, '0');
  String get hours =>
      ((remainingSeconds % 86400) ~/ 3600).toString().padLeft(2, '0');
  String get minutes =>
      ((remainingSeconds % 3600) ~/ 60).toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final double progress = remainingSeconds / totalSeconds;

    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20.h),

                  /// Title
                  Text(
                    "Body diagram",
                    textAlign: TextAlign.center,
                    style: getSemiBold600Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  /// Subtitle
                  Text(
                    "Understand your muscle readiness \nbefore your next workout.",
                    textAlign: TextAlign.center,
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: Colors.white54,
                    ),
                  ),

                  SizedBox(height: 30.h),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white54.withOpacity(0.09),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 280.w,
                          padding: EdgeInsets.all(16.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: const Color(0xFF363826).withOpacity(0.6),
                            border: Border.all(color: ColorManager.textPrimary),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'Time Remaining',
                                  style: getRegular400Style18(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),

                              SizedBox(height: 20.h),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TimeItem(value: days, label: 'Day'),
                                  TimeItem(value: hours, label: 'Hour'),
                                  TimeItem(value: minutes, label: 'Min'),
                                ],
                              ),

                              SizedBox(height: 20.h),

                              /// Progress bar
                              Container(
                                height: 8.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.black26,
                                ),
                                child: FractionallySizedBox(
                                  alignment: Alignment.centerLeft,
                                  widthFactor: progress,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFFede845),
                                          Color(0xFFfca00a),
                                          Color(0xFFff3d0d),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10.h),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Green',
                                    style: getRegular400Style14(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Text(
                                    'Yellow',
                                    style: getRegular400Style14(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Text(
                                    'Red',
                                    style: getRegular400Style14(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 18.h),

                              const InfoText(title: 'Muscle:', value: ' Chest'),
                              const InfoText(
                                title: 'Status:',
                                value: ' Recovering',
                              ),
                              const InfoText(
                                title: 'Last Trained:',
                                value: ' Bench Press',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 40.h),

                        Image.asset(
                          isRotated
                              ? ImageManager.bodyThree
                              : ImageManager.bodytwo,
                          height: 400.h,
                          fit: BoxFit.contain,
                        ),

                        SizedBox(height: 30.h),

                        /// Rotate Button
                        InkWell(
                          onTap: () => setState(() => isRotated = !isRotated),
                          child: Image.asset(IconManager.rotate, height: 60.h),
                        ),

                        SizedBox(height: 30.h),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: const Color(0xFF383838),
                            ),
                            child: Column(
                              children: [
                                DiagramAlartCard(
                                  text: "Avoid training this muscle today.",
                                  icon: IconManager.reddot,
                                ),
                                SizedBox(height: 10),
                                DiagramAlartCard(
                                  text: "Mobility or light work recommended.",
                                  icon: IconManager.orangedot,
                                ),
                                SizedBox(height: 10),
                                DiagramAlartCard(
                                  text: "Safe to include in today’s workout.",
                                  icon: IconManager.yellowdot,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
