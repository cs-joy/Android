import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/recovery%20home/view/widget/recovery_status_card.dart';

class RecoveryStatusContainer extends StatelessWidget {
  const RecoveryStatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
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
                              "Chest recovery",
                              style: getRegular400Style16(
                                fontSize: 16.sp,
                                color: ColorManager.whiteColor,
                              ),
                            ),

                            SizedBox(height: 10.h),

                            Text(
                              "Mobility recommended today",
                              style: getRegular400Style14(
                                fontSize: 14.sp,
                                color: Colors.white54,
                              ),
                            ),

                            SizedBox(height: 15.h),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RecoveryStatusCard(
                                  icon: IconManager.rest,
                                  title: "Rest",
                                ),

                                SizedBox(width: 10.w),

                                RecoveryStatusCard(
                                  icon: IconManager.mobility,
                                  title: "Mobility",
                                ),

                                SizedBox(width: 10.w),

                                RecoveryStatusCard(
                                  icon: IconManager.hydration,
                                  title: "Hydration",
                                ),
                              ],
                            ),

                            SizedBox(height: 25.h),

                            PrimaryButton(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              backgroundColor: ColorManager.buttonColor,
                              title: "view recovery plan",
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  RouteName.workoutPlanScreenRoute,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
  }
}