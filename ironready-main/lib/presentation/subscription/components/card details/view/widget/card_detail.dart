import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: const Color.fromARGB(180, 77, 81, 57),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top: -60,
            right: -60,
            child: Container(
              width: 200.w,
              height: 200.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.10),
              ),
            ),
          ),

          Positioned(
            bottom: -70,
            left: -70,
            child: Container(
              width: 220.w,
              height: 220.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.08),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current Balance",
                      style: getSemiBold600Style16(
                        color: ColorManager.whiteColor,
                      ),
                    ),
                    Image.asset(IconManager.visa2, width: 60.w, height: 50.h),
                  ],
                ),

                Text(
                  "\$X.XXX,XX",
                  style: getSemiBold600Style24(color: ColorManager.whiteColor),
                ),

                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "**** **** **** ****",
                      style: getSemiBold600Style16(
                        color: ColorManager.whiteColor,
                      ),
                    ),
                    Text(
                      "12/24",
                      style: getRegular400Style16(
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
