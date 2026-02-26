import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class DiagramAlartCard extends StatelessWidget {
  final String text;
  final double? height;
  final String? icon;
  final Color? backgroundColor;
  final Color? borderColor;

  const DiagramAlartCard({
    super.key,
    required this.text,
    this.height,
    this.icon,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: height ?? 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: backgroundColor ?? ColorManager.containerbodytwo,
          border: Border.all(color: borderColor ?? ColorManager.defaultColor),
        ),
        padding: EdgeInsets.symmetric(horizontal:8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Image.asset(icon!, height: 20.h, width: 20.w, fit: BoxFit.contain),
            ],
      
            Expanded(
              child: Text(
              strutStyle: StrutStyle(
                height: 1.2
              ),
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: getRegular400Style14(
                  fontSize: 14.sp,
                  color: ColorManager.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
