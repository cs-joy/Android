import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';

class PasswordField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;

  const PasswordField({
    super.key,
    this.hintText,
    this.controller,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

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
           color: const Color.fromARGB(180, 77, 81, 57),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: widget.controller,
                  obscureText: _obscureText,
                  style: getRegular400Style14(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hintText ?? "Password",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.55),
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ),

              const SizedBox(width: 8),

        
              GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Image.asset(
                  _obscureText
                      ? IconManager.eyeOff
                      : IconManager.ey,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.contain,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
