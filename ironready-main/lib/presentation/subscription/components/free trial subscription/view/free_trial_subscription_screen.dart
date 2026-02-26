import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/subscription/components/free%20trial%20subscription/view/widget/free_trial_container.dart';
import 'package:iron_ready/presentation/subscription/components/free%20trial%20subscription/view/widget/membership_type_container.dart';
import 'package:iron_ready/presentation/subscription/components/free%20trial%20subscription/view/widget/next_billing_container.dart';
import 'package:iron_ready/presentation/subscription/components/free%20trial%20subscription/view/widget/plan_container.dart';

class FreeTrialSubscriptionScreen extends StatefulWidget {
  const FreeTrialSubscriptionScreen({super.key});

  @override
  State<FreeTrialSubscriptionScreen> createState() =>
      _FreeTrialSubscriptionScreenState();
}

class _FreeTrialSubscriptionScreenState
    extends State<FreeTrialSubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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

                FreeTrialContainer(),

                SizedBox(height: 15.h),

                MembershipTypeContainer(),

                SizedBox(height: 15.h),

                NextBillingContainer(),

                SizedBox(height: 15.h),

                PlanContainer(),

                const Spacer(),

                PrimaryButton(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  backgroundColor: ColorManager.buttonColor,
                  title: "Manage subscription",
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.subscriptionScreenRoute,
                    );
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
