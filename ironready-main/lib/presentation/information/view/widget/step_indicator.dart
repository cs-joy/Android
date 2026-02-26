// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:iron_ready/core/resource/constansts/color_manger.dart';

// class StepIndicator extends StatelessWidget {
//   final int totalSteps;
//   final int currentStep;

//   const StepIndicator({
//     super.key,
//     required this.totalSteps,
//     required this.currentStep,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: List.generate(
//         totalSteps,
//         (index) => Expanded(
//           child: Container(
//             height: 6.h,
//             margin: EdgeInsets.symmetric(horizontal: 4.w),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: index == currentStep
//                   ? ColorManager.textPrimary
//                   : Colors.white,
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

class StepIndicator extends StatelessWidget {
  final int totalSteps;
  final int currentStep;

  const StepIndicator({
    super.key,
    required this.totalSteps,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        totalSteps,
        (index) => Expanded(
          child: Container(
            height: 6.h,
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: index == currentStep
                  ? ColorManager.textPrimary
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
