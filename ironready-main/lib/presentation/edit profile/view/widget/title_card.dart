import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: getSemiBold600Style16(
          fontSize: 16.sp,
          color: ColorManager.whiteColor,
        ),
      ),
    );
  }
}
