import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class SocialAuthButton extends StatelessWidget {
  final String text;
  final String iconpath;
  final VoidCallback onTap;

  const SocialAuthButton({
    super.key,
    required this.text,
    required this.iconpath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 58.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(12),
       
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconpath,
              height: 25.h,
              width: 25.w,
              fit: BoxFit.contain,
            
             
            ),
            SizedBox(width: 10.w),
            Text(
              text,
              style: getMedium500Style16(
                fontSize: 16.sp,
           
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
