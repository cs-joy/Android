import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';

class RecoveryTipContainer extends StatelessWidget {
  const RecoveryTipContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xFF171717),
        border: Border.all(color: ColorManager.textPrimary),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  IconManager.lightblub,
                  height: 35.h,
                  width: 35.w,
                  fit: BoxFit.contain,
                ),

                SizedBox(width: 8.w),

                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                          height: 1.4,
                        ),
                        children: [
                          TextSpan(
                            text: 'Recovery Tip: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Hydrate and prioritize \nprotein intake within the next 45 minutes \nfor optimal muscle repair and growth.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
