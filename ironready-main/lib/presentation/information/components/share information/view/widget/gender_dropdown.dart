import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';

class GenderDropdown extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;

  const GenderDropdown({
    super.key,
    this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          height: 56.h,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color.fromARGB(180, 77, 81, 57),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              hint: Text(
                "Male",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.55),
                  fontSize: 14.sp,
                ),
              ),
              isExpanded: true,
              dropdownColor: const Color.fromARGB(230, 40, 42, 30),
              icon: Image.asset(
                IconManager.arrowdown,
                width: 18.w,
                height: 18.h,
              ),
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
              ),
              items: const [
                DropdownMenuItem(
                  value: "Male",
                  child: Text("Male"),
                ),
                DropdownMenuItem(
                  value: "Female",
                  child: Text("Female"),
                ),
              ],
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
