import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/subscription/view/widget/subscribtion_button.dart';
import 'package:iron_ready/presentation/subscription/view/widget/subscription_card.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  bool isMonthly = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CommonHeader(
                  title: "Subscription",
                  titleStyle: getRegular400Style24(
                    fontSize: 24.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Text(
                  "Let’s join",
                  style: getRegular400Style16(
                    fontSize: 16.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "VIP MEMBERS",
                  style: getRegular400Style32(
                    fontSize: 32.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 15.h),

     
                Container(
                  height: 60.h,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                       subscriptionButton(
                          title: "MONTHLY",
                          selected: isMonthly,
                          onTap: () {
                            setState(() {
                              isMonthly = true;
                            });
                          },
                        ),
                       subscriptionButton(
                          title: "YEARLY",
                          selected: !isMonthly,
                          onTap: () {
                            setState(() {
                              isMonthly = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 35.h),

                Row(
                  children: [
                    Expanded(
                      child: SubscriptionCard(
                        title: "MONTHLY PLAN",
                        price: "\$9.99",
                        subtitle: "per month",
                        isPopular: true,
                        isActive: isMonthly,
                        onTap: (){
                           Navigator.pushNamed(context, RouteName.confirmationScreenRoute);
                        },
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: SubscriptionCard(
                        onTap: (){
                           Navigator.pushNamed(context, RouteName.confirmationScreenRoute);
                        },
                        title: "YEARLY PLAN",
                        price: "\$89.99",
                        subtitle: "per year",
                        isPopular: false,
                        isActive: !isMonthly,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),

                // PrimaryButton(
                //   padding: EdgeInsets.symmetric(horizontal: 4.w),
                //   backgroundColor: ColorManager.buttonColor,
                //   title: "start 14 day free trial",
                //   onPressed: () {
                //     Navigator.pushNamed(context, RouteName.confirmationScreenRoute);
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

