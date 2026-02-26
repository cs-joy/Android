
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/style_manager.dart';

class TodayWeeklyButton extends StatelessWidget {
  final bool isWeeklySelected;
  final VoidCallback onTodayTap;
  final VoidCallback onWeeklyTap;

  const TodayWeeklyButton({
    super.key,
    required this.isWeeklySelected,
    required this.onTodayTap,
    required this.onWeeklyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(
        color: const Color(0xFF6f753d),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: const Color(0xFF656656)),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTodayTap,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isWeeklySelected
                      ? Colors.transparent
                      : const Color(0xFFDFFF3D),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  'TODAY',
                  style: getRegular400Style15(
                    fontSize: 15.sp,
                    color: isWeeklySelected
                        ? Colors.white70
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 6.w),

          Expanded(
            child: GestureDetector(
              onTap: onWeeklyTap,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isWeeklySelected
                      ? const Color(0xFFDFFF3D)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  'WEEKLY',
                  style: getRegular400Style15(
                    fontSize: 15.sp,
                    color: isWeeklySelected
                        ? Colors.black
                        : Colors.white70,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
