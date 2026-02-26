import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

Widget subscriptionButton({
  required String title,
  required bool selected,
  required VoidCallback onTap,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: selected
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 75, 75, 7), // dark
                    Color.fromARGB(255, 153, 172, 41), // soft neo green
                  ],
                )
              : null,

          border: selected
              ? Border(
                  bottom: BorderSide(color: ColorManager.textPrimary, width: 2),
                )
              : null,

          color: selected ? null : Colors.transparent,
        ),
        child: Text(
          title,
          style: getRegular400Style15(
            fontSize: 20.sp,
            color: ColorManager.whiteColor,
          ),
        ),
      ),
    ),
  );
}
