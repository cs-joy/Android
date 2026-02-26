
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class WarmupEquipmetContainer extends StatelessWidget {
  final String title;
  final String icon;
  final List<String> suggestions;

  const WarmupEquipmetContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.suggestions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: const Color(0XFF171717),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
    
            /// Title
            Text(
              title,
              style: getSemiBold600Style16(
                color: ColorManager.whiteColor,
              ),
            ),
    
            SizedBox(height: 15.h),
    
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Left Icon
                Image.asset(
                  icon,
                  width: 50.w,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
    
                SizedBox(width: 10.w),
    
                /// Suggestions
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: suggestions.map((item) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Row(
                        children: [
                          Image.asset(
                            IconManager.dot,
                            width: 6.w,
                            height: 6.h,
                            color: Colors.white54,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            item,
                            style: getRegular400Style14(
                              fontSize: 14.sp,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
    
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
