import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';

class HoverBottomNavBar extends StatelessWidget {
  final List<BottomNavItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;

  const HoverBottomNavBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 55.h,
          decoration: BoxDecoration(
            color: ColorManager.containerbody,
            // color: const Color.fromARGB(255, 15, 14, 14),
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              final bool isActive = index == currentIndex;

              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => onTap(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic,
                  height: double.infinity,

                  // 🔥 KEY PART: width changes only on hover
                  width: isActive ? 100.w : 40.w,

                  decoration: BoxDecoration(
                    color: isActive
                        ? ColorManager.textPrimary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        height: 40.h,
                        width: 40.w,
                        child: Image.asset(
                          items[index].icon,
                          height: 35.h,
                          width: 35.w,
                          fit: BoxFit.contain,
                        ),
                      ),

                      /// TEXT (only visible on hover)
                      AnimatedSize(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        child: isActive
                            ? Padding(
                                padding: EdgeInsets.only(left: 2.w),
                                child: Text(
                                  items[index].title.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

/// 🔹 MODEL CLASS
class BottomNavItem {
  final String icon;
  final String title;

  const BottomNavItem({required this.icon, required this.title});
}
