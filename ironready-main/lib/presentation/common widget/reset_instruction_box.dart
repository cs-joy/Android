import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class ResetInstructionBox extends StatelessWidget {
  final List<String> instructions;


  const ResetInstructionBox({
    super.key,
    required this.instructions,
   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: const Color(0xFF171717),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.h),
          ...instructions.map(
            (text) => Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    IconManager.dot,
                    height: 6.h,
                    width: 6.w,
                    color: ColorManager.whiteColor,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(
                      text,
                      style: getRegular400Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
