import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/subscription/components/manage%20subscription/view/widget/managing_date_card.dart';

class ManageSubscriptionScreen extends StatefulWidget {
  const ManageSubscriptionScreen({super.key});

  @override
  State<ManageSubscriptionScreen> createState() =>
      _ManageSubscriptionScreenState();
}

class _ManageSubscriptionScreenState extends State<ManageSubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CommonHeader(
                  title: "Manage Subscription",
                  titleStyle: getRegular400Style24(
                    fontSize: 24.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 15.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ManagingDateCard(
                      date: '01/01/2026',
                      durationText: 'Member Since',
                    ),
                    ManagingDateCard(
                      date: '01/14/2026',   // MM/DD/YYYY
                      durationText: 'Subscription Ends',
                    ),
                  ],
                ),

                SizedBox(height: 15.h),

                Container(
                  width: double.infinity,
                  height: 75.h,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.whiteColor),
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white24.withOpacity(0.11),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Membership Type",
                          style: getSemiBold600Style16(
                            fontSize: 16.sp,
                            color: ColorManager.whiteColor,
                          ),
                        ),

                        SizedBox(height: 12.h),

                        Text(
                          "14-day free trial",
                          style: getRegular400Style14(
                            fontSize: 14.sp,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15.h),

                Container(
                  width: double.infinity,
                  height: 80.h,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.whiteColor),
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white24.withOpacity(0.06),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Next billing",
                              style: getSemiBold600Style16(
                                fontSize: 16.sp,
                                color: ColorManager.whiteColor,
                              ),
                            ),

                            Text(
                              "\$9.99",
                              style: getSemiBold600Style18(
                                fontSize: 18.sp,
                                color: ColorManager.textPrimary,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Starting on 14 Jan 2026",
                              style: getRegular400Style14(
                                fontSize: 14.sp,
                                color: Colors.white54,
                              ),
                            ),

                            Text(
                              "Per Month",
                              style: getSemiBold600Style18(
                                fontSize: 14.sp,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Manage subscription",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.freeTrialSubscriptionScreenRoute);
                  },
                ),

                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
