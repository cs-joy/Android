
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class CommonTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? suffixIcon; 

  const CommonTextField({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            // color: Colors.black.withOpacity(0.25),
             color: const Color.fromARGB(180, 77, 81, 57),
          
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  style: getRegular400Style14(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.55),
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ),

              // 👉 Optional asset icon (IconManager path)
              if (suffixIcon != null) ...[
                const SizedBox(width: 8),
                Image.asset(
                  suffixIcon!,
                  height: 25.h,
                  width: 25.w,
                  fit: BoxFit.contain,
                  color: Colors.white.withOpacity(0.7),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
