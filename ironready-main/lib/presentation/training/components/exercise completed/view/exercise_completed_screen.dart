// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:iron_ready/core/resource/constansts/color_manger.dart';
// import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
// import 'package:iron_ready/core/resource/style_manager.dart';
// import 'package:iron_ready/core/route/route_name.dart';
// import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
// import 'package:iron_ready/presentation/common%20widget/primary_button.dart';

// class ExerciseCompletedScreen extends StatelessWidget {
//   const ExerciseCompletedScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CommonPageGradient(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Center(
//               child: Column(
//                 children: [
//                   SizedBox(height: 20.h),

//                   Text(
//                     "exercise complete",
//                     style: getSemiBold600Style24(
//                       fontSize: 24.sp,
//                       color: ColorManager.whiteColor,
//                     ),
//                   ),

//                   SizedBox(height: 8.h),

//                   Text(
//                     "Bench press completed",
//                     style: getRegular400Style16(
//                       fontSize: 16.sp,
//                       color: Colors.white54,
//                     ),
//                   ),

//                   SizedBox(height: 30.h),

//                   Image.asset(
//                     IconManager.subSuccess,
//                     height: 100.h,
//                     width: 100.h,
//                     fit: BoxFit.contain,
//                   ),

//                   SizedBox(height: 30.h),

//                   Container(
//                     width: double.infinity,
//                     height: 120.h,

//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.r),
//                       color: Color(0xFF171717),
//                     ),

//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: Column(
//                         children: [
//                           SizedBox(height: 15.h),

//                           Row(
//                             children: [
//                               Image.asset(
//                                 IconManager.chest,
//                                 width: 25.w,
//                                 height: 25.h,
//                                 fit: BoxFit.contain,
//                               ),

//                               SizedBox(width: 10.w),

//                               Text(
//                                 "Chest Summary",
//                                 style: getSemiBold600Style16(
//                                   fontSize: 16.sp,
//                                   color: ColorManager.whiteColor,
//                                 ),
//                               ),
//                             ],
//                           ),

//                           SizedBox(height: 15.h),

//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Image.asset(
//                                       IconManager.dot,
//                                       width: 5.w,
//                                       height: 5.h,
//                                       fit: BoxFit.contain,
//                                       color: Colors.white54,
//                                     ),

//                                     SizedBox(width: 10.w),

//                                     Text(
//                                       "Chest muscles activated",
//                                       style: getRegular400Style14(
//                                         fontSize: 14.sp,
//                                         color: Colors.white54,
//                                       ),
//                                     ),
//                                   ],
//                                 ),

//                                 SizedBox(height: 10.h),

//                                        Row(
//                                   children: [
//                                     Image.asset(
//                                       IconManager.dot,
//                                       width: 5.w,
//                                       height: 5.h,
//                                       fit: BoxFit.contain,
//                                       color: Colors.white54,
//                                     ),

//                                     SizedBox(width: 10.w),

//                                     Text(
//                                       "Estimated Fatigue: Medium",
//                                       style: getRegular400Style14(
//                                         fontSize: 14.sp,
//                                         color: Colors.white54,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 40.h),

//                   PrimaryButton(
//                     padding: EdgeInsets.symmetric(horizontal: 2.w),
//                     backgroundColor: ColorManager.buttonColor,
//                     title: "Finish workout",
//                     onPressed: () {
//                       Navigator.pushNamed(context, RouteName.workoutCompleteScreenRoute);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common widget/primary_button.dart';
import 'package:iron_ready/presentation/global state/training_progress.dart';

class ExerciseCompletedScreen extends StatelessWidget {
  const ExerciseCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20.h),

                  Text(
                    "exercise complete",
                    style: getSemiBold600Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  Text(
                    "Bench press completed",
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: Colors.white54,
                    ),
                  ),

                  SizedBox(height: 30.h),

                  Image.asset(
                    IconManager.subSuccess,
                    height: 100.h,
                    width: 100.h,
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: 30.h),

                  Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xFF171717),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 15.h),

                          Row(
                            children: [
                              Image.asset(
                                IconManager.chest,
                                width: 25.w,
                                height: 25.h,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Chest Summary",
                                style: getSemiBold600Style16(
                                  fontSize: 16.sp,
                                  color: ColorManager.whiteColor,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 15.h),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      IconManager.dot,
                                      width: 5.w,
                                      height: 5.h,
                                      fit: BoxFit.contain,
                                      color: Colors.white54,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      "Chest muscles activated",
                                      style: getRegular400Style14(
                                        fontSize: 14.sp,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Image.asset(
                                      IconManager.dot,
                                      width: 5.w,
                                      height: 5.h,
                                      fit: BoxFit.contain,
                                      color: Colors.white54,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      "Estimated Fatigue: Medium",
                                      style: getRegular400Style14(
                                        fontSize: 14.sp,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 40.h),

                  // PrimaryButton(
                  //   padding: EdgeInsets.symmetric(horizontal: 2.w),
                  //   backgroundColor: ColorManager.buttonColor,
                  //   title: "Restart workout",
                  //   onPressed: () {
                  //     /// Reset training progress
                  //     TrainingProgress.resetChestTraining();

                     
                  //     Navigator.pushNamedAndRemoveUntil(
                  //       context,
                  //       RouteName.flatBenchPressScreenRoute,
                  //       (route) => false,
                  //     );
                  //   },
                  // ),

                  // SizedBox(height: 20.h),

                  PrimaryButton(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    backgroundColor: ColorManager.buttonColor,
                    title: "Finish workout",
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteName.workoutCompleteScreenRoute,
                      );
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
