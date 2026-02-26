import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class TimeItem extends StatelessWidget {
  final String value;
  final String label;

  const TimeItem({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: getRegular400Style32(
            color: Colors.white,
            fontSize: 40.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: getRegular400Style14(
            color: Colors.white,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
