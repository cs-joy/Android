import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class CommonHeader extends StatelessWidget {
  final String? title;
  final String? trailing;
  final String? fromScreen;
  final VoidCallback? onTap;
  final TextStyle? titleStyle; 

  const CommonHeader({
    super.key,
    this.title,
    this.trailing,
    this.onTap,
    this.fromScreen,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        children: [
          fromScreen == 'favorite'
              ? SizedBox(width: 45.w)
              : GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: Image.asset(
                      IconManager.arrowleft,
                      width: 25.w,
                      height: 25.h,
                    ),
                  ),
                ),

          /// CENTER TITLE
          Expanded(
            child: Text(
              title ?? '',
              textAlign: TextAlign.center,
              style: titleStyle ?? getBold700Style18( // 👈 default fallback
                fontSize: 18.sp,
                color: ColorManager.whiteColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          trailing != null
              ? GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(10.w),
                    child: Image.asset(
                      trailing!,
                      height: 25.h,
                      width: 25.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : SizedBox(width: 45.w),
        ],
      ),
    );
  }
}
