import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/presentation/home/view/widget/info_alart_card.dart';

class BodyContainer extends StatelessWidget {
  final double? height;
  final String bodyImage;
  final List<AlertItem> alerts;

  const BodyContainer({
    super.key,
    this.height,
    required this.bodyImage,
    required this.alerts,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Container(
        height: height ?? 660.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: ColorManager.containerbody,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(height: 35.h),

            /// body image
            Image.asset(
              bodyImage,
              height: 400.h,
              width: 300.w,
              fit: BoxFit.contain,
            ),

            SizedBox(height: 30.h),

            /// alert box
            Container(
              width: 320.w,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: ColorManager.containerbodyone,
              ),
              child: Column(
                children: alerts
                    .map(
                      (item) => Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: InfoAlertCard(text: item.text, icon: item.icon),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlertItem {
  final String text;
  final String icon;

  AlertItem({required this.text, required this.icon});
}
