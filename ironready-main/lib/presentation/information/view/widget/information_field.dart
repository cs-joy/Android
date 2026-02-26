import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class InformationField extends StatefulWidget {
  const InformationField({
    super.key,
    required this.title,
    required this.imagepath,
  });

  final String title;
  final String imagepath;

  @override
  State<InformationField> createState() => _InformationFieldState();
}

class _InformationFieldState extends State<InformationField> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.25),
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: _isSelected
                ? ColorManager.textPrimary
                : Colors.white54,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset(
                widget.imagepath,
                height: 32.h,
                width: 32.w,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 12.w),
              Text(
                widget.title,
                style: getSemiBold600Style18(
                  fontSize: 18.sp,
                  color: ColorManager.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
