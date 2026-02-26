import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class RememberMeRow extends StatelessWidget {
  final bool value;
  final VoidCallback onTap;
  final VoidCallback onForgotTap;

  const RememberMeRow({
    super.key,
    required this.value,
    required this.onTap,
    required this.onForgotTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 18.w,
                  width: 18.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white, width: 1.5),
                    color: value ? Colors.white : Colors.transparent,
                  ),
                  child: value
                      ? Image.asset(
                          IconManager.tik,
                          height: 12.h,
                          color: Colors.black,
                        )
                      : null,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                "Remember Me",
                style: getRegular400Style16(
                  fontSize: 16.sp,
                  color: Colors.white.withOpacity(0.55),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: onForgotTap,
            child: Text(
              "Forgot Password?",
              style: getRegular400Style16(
                fontSize: 16.sp,
                color: ColorManager.textRedColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
