import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.imagepath, required this.onTap});

  final String imagepath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: 80.w,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: ColorManager.whiteColor),
        ),
        child: Center(
          child: Image.asset(
            imagepath, // <-- এখানে যেকোন icon দাও
            height: 35.h,
            width: 50.w,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
