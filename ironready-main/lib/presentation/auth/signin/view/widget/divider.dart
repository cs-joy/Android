import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class OrDivider extends StatelessWidget {
  final String text;

  const OrDivider({
    super.key,
    this.text = "Or Sign In with",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white.withOpacity(0.25),
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            text,
            style: getRegular400Style14(
              fontSize: 14.sp,
              color: Colors.white.withOpacity(0.55),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.white.withOpacity(0.25),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
