import 'package:flutter/material.dart';
import 'package:iron_ready/core/resource/constansts/icon_manager.dart';
import 'package:iron_ready/presentation/body%20diagram/view/body_diagram_screen.dart';
import 'package:iron_ready/presentation/bottom%20navbar/view/bottom_navbar.dart';
import 'package:iron_ready/presentation/home/view/home_screen.dart';
import 'package:iron_ready/presentation/profile/view/profile_screen.dart';
import 'package:iron_ready/presentation/recovery/view/recovery_screen.dart';
import 'package:iron_ready/presentation/training/view/training_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    TrainingScreen(),
    BodyDiagramScreen(),
    RecoveryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: pages[selectedIndex],

      bottomNavigationBar: HoverBottomNavBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavItem(icon: IconManager.home, title: "Home"),
          BottomNavItem(icon: IconManager.fitmenu, title: "Training"),
          BottomNavItem(icon: IconManager.bodymenu, title: "Body"),
          BottomNavItem(icon: IconManager.heart, title: "Recovery"),
          BottomNavItem(icon: IconManager.profilemenu, title: "Profile"),
        ],
      ),
    );
  }
}
