import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/subscription/components/confirmation/view/widget/payment_card.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
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
                  title: "Confirmation",
                  titleStyle: getRegular400Style24(
                    fontSize: 24.sp,
                    color: ColorManager.whiteColor,
                  ),
                ),

                SizedBox(height: 20.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Choose Payment Method",
                    style: getSemiBold600Style18(
                      fontSize: 20.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ),

                SizedBox(height: 15.h),

                Row(
                  children: [
                    PaymentCard(imagepath: IconManager.visa, onTap: () {}),
                    SizedBox(width: 10.w),
                    PaymentCard(imagepath: IconManager.stripe, onTap: () {}),
                    SizedBox(width: 10.w),
                    PaymentCard(
                      imagepath: IconManager.mastercard,
                      onTap: () {},
                    ),
                    SizedBox(width: 10.w),
                    PaymentCard(imagepath: IconManager.applepay, onTap: () {}),
                  ],
                ),

                SizedBox(height: 30.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Payment Details",
                        style: getMedium500Style19(
                          fontSize: 19.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "Sub Total",
                        style: getMedium500Style19(
                          fontSize: 17.sp,

                          color: ColorManager.whiteColor,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      //  Divider(thickness: 2, color: const Color.fromARGB(255, 154, 155, 145)),
                      Divider(
                        thickness: 1,
                        color: const Color.fromARGB(255, 190, 192, 180),
                      ),

                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Price",
                            style: getRegular400Style16(
                              fontSize: 16.sp,
                              color: const Color.fromARGB(255, 190, 192, 180),
                            ),
                          ),

                          Text(
                            "\$9.99",
                            style: getSemiBold600Style16(
                              fontSize: 16.sp,
                              color: ColorManager.whiteColor,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10.h),

                      Divider(
                        thickness: 1,
                        color: const Color.fromARGB(255, 190, 192, 180),
                      ),

                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: getSemiBold600Style18(
                              fontSize: 18.sp,
                              color: ColorManager.whiteColor,
                            ),
                          ),

                          Text(
                            "\$9.99",
                            style: getSemiBold600Style18(
                              fontSize: 18.sp,
                              color: ColorManager.whiteColor,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30.h),

                      PrimaryButton(
                        padding: EdgeInsets.symmetric(horizontal: 0.w),
                        backgroundColor: ColorManager.buttonColor,
                        title: "Pay now",
                        onPressed: () {
                          Navigator.pushNamed(context, RouteName.cardDetailsScreenRoute);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
