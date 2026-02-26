import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
import 'package:iron_ready/presentation/common%20widget/password_field.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/subscription/components/card%20details/view/widget/card_detail.dart';

class CardDetailsScreen extends StatefulWidget {
  const CardDetailsScreen({super.key});

  @override
  State<CardDetailsScreen> createState() => _CardDetailsScreenState();
}

class _CardDetailsScreenState extends State<CardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  CommonHeader(
                    trailing: IconManager.threedot,
                    title: "Add new card",
                    titleStyle: getRegular400Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),
            
                  SizedBox(height: 20.h),
            
                  CardDetail(),
            
                  SizedBox(height: 30.h),
            
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Card Number",
                      style: getSemiBold600Style16(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  PasswordField(
                    controller: TextEditingController(),
                    hintText: "Enter Card Number",
                  ),
            
                  SizedBox(height: 15.h),
            
                  /// Email
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Card Holder Name",
                      style: getSemiBold600Style16(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
            
                    CommonTextField(
                    controller: TextEditingController(),
                    hintText: "Einstein Graham Bell",
                  
                  ),
            
                  SizedBox(height: 20.h),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Expired
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expired",
                            style: getSemiBold600Style16(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),
            
                          SizedBox(
                            width: 170.w,
                            height: 60.h,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: getRegular400Style14(
                                color: Colors.white,
                                fontSize: 14.sp,
                              ),
                              decoration: InputDecoration(
                                hintText: "MM/YY",
                                hintStyle: getRegular400Style14(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 14.sp,
                                ),
                                filled: true,
                                fillColor: const Color.fromARGB(180, 77, 81, 57),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
            
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV Code",
                            style: getSemiBold600Style16(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),
            
                          SizedBox(
                            width: 170.w,
                            height: 60.h,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              style: getRegular400Style14(
                                color: Colors.white,
                                fontSize: 14.sp,
                              ),
                              decoration: InputDecoration(
                                hintText: "CVV",
                                hintStyle: getRegular400Style14(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 14.sp,
                                ),
                                filled: true,
                                fillColor: const Color.fromARGB(180, 77, 81, 57),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            
                  SizedBox(height: 30.h),
            
                     PrimaryButton(
                          padding: EdgeInsets.symmetric(horizontal: 0.w),
                          backgroundColor: ColorManager.buttonColor,
                          title: "Pay now",
                          onPressed: () {
                            Navigator.pushNamed(context, RouteName.subscriptionSuccessScreenRoute);
                          },
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
