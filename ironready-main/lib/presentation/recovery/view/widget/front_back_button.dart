import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class FrontBackButton extends StatelessWidget {
  final bool isBackviewSelected;
  final VoidCallback onFrontTap;
  final VoidCallback onBackTap;

  const FrontBackButton({
    super.key,
    required this.isBackviewSelected,
    required this.onFrontTap,
    required this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.all(6.r),
      decoration: BoxDecoration(
        color: const Color(0xFF6f753d),
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: const Color(0xFF656656)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: onFrontTap,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isBackviewSelected
                        ? Colors.transparent
                        : const Color(0xFFDFFF3D),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Text(
                    'Front view',
                    style: getRegular400Style15(
                      fontSize: 16.sp,
                      color: isBackviewSelected ? Colors.white70 : Colors.black,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(width: 6.w),

            Expanded(
              child: GestureDetector(
                onTap: onBackTap,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isBackviewSelected
                        ? const Color(0xFFDFFF3D)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Text(
                    'back view',
                    style: getRegular400Style15(
                      fontSize: 16.sp,
                      color: isBackviewSelected ? Colors.black : Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
