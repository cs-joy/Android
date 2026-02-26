import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/core/resource/constansts/image_manager.dart';
import 'package:iron_ready/core/resource/style_manager.dart';
import 'package:iron_ready/core/route/route_name.dart';
import 'package:iron_ready/presentation/common widget/common_page_gradient.dart';
import 'package:iron_ready/presentation/profile/view/widget/profile_list_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonPageGradient(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 30.h),

                    Text(
                      "Profile",
                      style: getRegular400Style32(
                        fontSize: 32.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),

                    SizedBox(height: 10.h),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: ColorManager.textPrimary,
                              width: 1.5,
                            ),
                          ),
                        ),

                        Container(
                          height: 105.h,
                          width: 105.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: _profileImage != null
                                ? FileImage(_profileImage!)
                                : AssetImage(ImageManager.people)
                                    as ImageProvider,
                          ),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: GestureDetector(
                            onTap: _pickImage,
                            child: Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                IconManager.bottomimage,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15.h),
                    Text(
                      "Kristin Rodriguez",
                      style: getSemiBold600Style16(
                        fontSize: 16.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Kristin@untitledui.com",
                      style: getRegular400Style14(
                        fontSize: 14.sp,
                        color: ColorManager.whiteColor,
                      ),
                    ),

                    SizedBox(height: 25.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Profile Setting",
                        style: getSemiBold600Style18(
                          fontSize: 18.sp,
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    ProfileListCard(
                      title: 'Edit Profile',
                      iconpath: IconManager.edit,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.editProfileScreenRoute,
                        );
                      },
                    ),

                    SizedBox(height: 15.h),

                    ProfileListCard(
                      title: 'Subscriptions',
                      iconpath: IconManager.subs,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.freeTrialSubscriptionScreenRoute,
                        );
                      },
                    ),

                    SizedBox(height: 15.h),

                    ProfileListCard(
                      title: 'Privacy & Security',
                      iconpath: IconManager.privacy,
                      onTap: () {},
                    ),

                    SizedBox(height: 15.h),

                    ProfileListCard(
                      title: 'Help & Support',
                      iconpath: IconManager.help,
                      onTap: () {},
                    ),

                    SizedBox(height: 15.h),

                    ProfileListCard(
                      title: 'Log Out',
                      iconpath: IconManager.logout,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.signinScreenRoute,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
