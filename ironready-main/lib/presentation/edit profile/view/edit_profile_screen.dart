import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common%20widget/common_header.dart';
import 'package:iron_ready/presentation/common%20widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/common%20widget/common_text_field.dart';
import 'package:iron_ready/presentation/common%20widget/primary_button.dart';
import 'package:iron_ready/presentation/edit%20profile/view/widget/title_card.dart';
import 'package:iron_ready/presentation/information/components/share%20information/view/widget/gender_dropdown.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String? gender;
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
                    title: "Edit Profile",
                    titleStyle: getRegular400Style24(
                      fontSize: 24.sp,
                      color: ColorManager.whiteColor,
                    ),
                  ),

                  SizedBox(height: 15.h),

                  TitleCard(title: 'Name'),

                  SizedBox(height: 10.h),

                  CommonTextField(hintText: "Enter your name.."),

                  SizedBox(height: 15.h),

                  TitleCard(title: 'Email'),

                  SizedBox(height: 10.h),

                  CommonTextField(
                    suffixIcon: IconManager.email,
                    controller: TextEditingController(),
                    hintText: "Enter your mail...",
                  ),
                  SizedBox(height: 15.h),

                  TitleCard(title: 'Phone'),

                  SizedBox(height: 10.h),

                  CommonTextField(
                    suffixIcon: IconManager.phone,
                    controller: TextEditingController(),
                    hintText: "Enter your phone number...",
                  ),

                  SizedBox(height: 15.h),

                  TitleCard(title: 'Age'),

                  SizedBox(height: 10.h),

                  CommonTextField(
                    controller: TextEditingController(),
                    hintText: "Enter your age...",
                  ),
                  SizedBox(height: 15.h),

                  TitleCard(title: 'Gender'),

                  SizedBox(height: 10.h),

                  GenderDropdown(
                    value: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    },
                  ),

                  SizedBox(height: 10.h),

                  TitleCard(title: 'Height'),

                  SizedBox(height: 10.h),

                  CommonTextField(
                    controller: TextEditingController(),
                    hintText: "Enter your height...",
                  ),
                  SizedBox(height: 15.h),

                  TitleCard(title: 'Weight'),

                  SizedBox(height: 10.h),

                  CommonTextField(
                    controller: TextEditingController(),
                    hintText: "Enter your weight...",
                  ),

                  SizedBox(height: 30.h),

                  PrimaryButton(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    backgroundColor: ColorManager.buttonColor,
                    title: "Update",
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.profileScreenRoute);
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
