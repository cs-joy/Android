import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class UnitField extends StatelessWidget {
  final String label;
  final String hintText;
  final String unit;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  const UnitField({
    super.key,
    required this.label,
    required this.hintText,
    required this.unit,
    this.controller,
    this.keyboardType = TextInputType.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label
        Text(
          label,
          style: getSemiBold600Style16(color: Colors.white, fontSize: 16.sp),
        ),
        SizedBox(height: 10.h),

        SizedBox(
          width: 170.w,
          height: 60.h,
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            style: getRegular400Style14(color: Colors.white, fontSize: 14.sp),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: getRegular400Style14(
                color: Colors.white.withOpacity(0.6),
                fontSize: 14.sp,
              ),
              filled: true,
              fillColor: const Color.fromARGB(180, 77, 75, 57),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),

              suffixText: unit,
              suffixStyle: getSemiBold600Style16(
                color: ColorManager.textPrimary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
