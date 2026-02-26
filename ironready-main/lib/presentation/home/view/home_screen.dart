import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/home/view/widget/body_container.dart';
import 'package:iron_ready/presentation/common%20widget/day_date_card.dart';
import 'package:iron_ready/presentation/home/view/widget/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(height: 15.h),

                  HomeHeader(),

                  SizedBox(height: 20.h),

                  Row(
                    children: [
                      Text(
                        "Today",
                        style: getSemiBold600Style16(
                          fontSize: 16.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        "13 January, 2026",
                        style: getRegular400Style14(
                          fontSize: 14.sp,
                          color: ColorManager.background,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DayDateCard(day: "Sat", date: "10"),

                        SizedBox(width: 8.w),

                        DayDateCard(day: "Sun", date: "11"),
                        SizedBox(width: 8.w),

                        DayDateCard(day: "Mon", date: "12"),
                        SizedBox(width: 8.w),

                        DayDateCard(
                          day: "Tue",
                          date: "13",
                          isActive: true,
                          onTap: () {},
                        ),
                        SizedBox(width: 8.w),

                        DayDateCard(day: "Wed", date: "14"),
                        SizedBox(width: 8.w),

                        DayDateCard(day: "Thu", date: "15"),
                        SizedBox(width: 8.w),

                        DayDateCard(day: "Fri", date: "16"),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Today’s Workout",
                      style: getSemiBold600Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      height: 230.h,
                      width: double.infinity,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),

                        color: const Color.fromARGB(255, 15, 14, 14),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Text(
                              "Lower Body Strength",
                              style: getRegular400Style25(
                                fontSize: 25.sp,
                                color: ColorManager.whiteColor,
                              ),
                            ),

                            SizedBox(height: 10.h),

                            Row(
                              children: [
                                Image.asset(
                                  IconManager.timer,
                                  height: 25.h,
                                  width: 25.w,
                                  fit: BoxFit.contain,
                                ),

                                SizedBox(width: 10.w),

                                Text(
                                  "60 min",
                                  style: getRegular400Style16(
                                    fontSize: 18.sp,
                                    color: const Color.fromARGB(
                                      255,
                                      164,
                                      160,
                                      160,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15.h),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  IconManager.fit,
                                  height: 25.h,
                                  width: 25.w,
                                  fit: BoxFit.contain,
                                ),

                                SizedBox(width: 10.w),

                                Text(
                                  strutStyle: StrutStyle(height: 1.7),
                                  "Flat Bench Press • Incline Bench Press • \nDecline Bench Press",
                                  style: getRegular400Style14(
                                    fontSize: 14.sp,
                                    color: const Color.fromARGB(
                                      255,
                                      164,
                                      160,
                                      160,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 25.h),

                            PrimaryButton(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              backgroundColor: ColorManager.buttonColor,
                              title: "start workout",
                              onPressed: () {
                                Navigator.pushNamed(context, RouteName.recoveryHomeScreenRoute);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30.h),

                  BodyContainer(
                    bodyImage: ImageManager.body,
                    alerts: [
                      AlertItem(
                        text: "Avoid training this muscle today.",
                        icon: IconManager.reddot,
                      ),
                      AlertItem(
                        text: "Mobility or light work recommended.",
                        icon: IconManager.orangedot,
                      ),
                      AlertItem(
                        text: "Safe to include in today’s workout.",
                        icon: IconManager.yellowdot,
                      ),
                    ],
                  ),

                   SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
