import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/notification/view/widget/notification_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CommonHeader(
                    title: "Notifications",
                    titleStyle: getRegular400Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 15.h),

                  NotificationCard(
                    notificationTitle: 'Today’s workout is ready',
                    timer: '2h ago',
                  ),
                  SizedBox(height: 15.h),

                  NotificationCard(
                    notificationTitle: 'You’re on a 6-day training streak.',
                    timer: '5h ago',
                  ),
                  SizedBox(height: 15.h),

                  NotificationCard(
                    notificationTitle:
                        'Chest muscles are now are fully recovered.',
                    timer: '5h ago',
                  ),
                  SizedBox(height: 15.h),

                  NotificationCard(
                    notificationTitle:
                        'Your shoulders need more recovery time today.',
                    timer: '5h ago',
                  ),
                  SizedBox(height: 15.h),

                  NotificationCard(
                    notificationTitle:
                        'Rest day complete. Ready for leg day tomorrow.',
                    timer: '5h ago',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
