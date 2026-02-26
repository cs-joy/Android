import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/recovery/view/widget/alart_card.dart';
import 'package:iron_ready/presentation/recovery/view/widget/recovery_status_container.dart';

class FrontContainer extends StatefulWidget {
  const FrontContainer({super.key});

  @override
  State<FrontContainer> createState() => _FrontContainerState();
}

class _FrontContainerState extends State<FrontContainer> {
  double barProgress = 0.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startBar();
  }

  void _startBar() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (barProgress < 1.0) {
        setState(() {
          barProgress += 0.01;
        });
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        children: [
          SizedBox(height: 30.h),

          Container(
            width: 240.w,
            height: 100.h,
            padding: EdgeInsets.all(14.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white54.withOpacity(0.09),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Top labels
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '24-0 hrs',
                      style: getSemiBold600Style14(
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '48-24hrs',
                      style: getSemiBold600Style14(
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      '72-48hrs',
                      style: getSemiBold600Style14(
                        color: Colors.white,
                        fontSize: 13.sp,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 14.h),

                Container(
                
                  height: 8.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.black26,
                  ),
                  child: FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: barProgress,
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

                SizedBox(height: 12.h),

               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ],
            ),
          ),

          SizedBox(height: 45.h),

          Image.asset(
            ImageManager.bodytwo,
            height: 400.h,
            width: 300.w,
            fit: BoxFit.contain,
          ),

          SizedBox(height: 45.h),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              width: double.infinity,
              height: 170.h,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                // color: const Color(0xFF383838),
                color: const Color(0xFF282924),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  AlartCard(
                    text: "Avoid training this muscle today.",
                    icon: IconManager.reddot,
                  ),
                  SizedBox(height: 15.h),
                  AlartCard(
                    text: "Mobility or light work recommended.",
                    icon: IconManager.orangedot,
                  ),
                  SizedBox(height: 15.h),
                  AlartCard(
                    text: "Safe to include in today’s workout.",
                    icon: IconManager.yellowdot,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 30.h),

          RecoveryContainer(),

       

           SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
