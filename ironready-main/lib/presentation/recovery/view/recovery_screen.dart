import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/recovery/view/widget/backview_container.dart';
import 'package:iron_ready/presentation/recovery/view/widget/front_back_button.dart';
import 'package:iron_ready/presentation/recovery/view/widget/frontview_container.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {

   bool backView = false;
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
                    title: "Recovery",
                    titleStyle: getRegular400Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 20.h),

                        FrontBackButton(
                    isBackviewSelected: backView,
                    onFrontTap: () {
                      setState(() => backView = false);
                    },
                    onBackTap: () {
                      setState(() => backView = true);
                    },
                  ),

                  SizedBox(height: 15.h),

                  backView ?  BackContainer() : FrontContainer() ,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
