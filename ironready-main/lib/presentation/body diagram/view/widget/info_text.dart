import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class InfoText extends StatelessWidget {
  final String title;
  final String value;

  const InfoText({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: RichText(
        text: TextSpan(
          style: getRegular400Style14(
            fontSize: 14.sp,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: title,
              style: getSemiBold600Style16(color: Colors.white),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
