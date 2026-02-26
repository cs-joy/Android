import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/font_manager.dart';
import 'package:iron_ready/presentation/layout/view/main_layout.dart';
import 'core/route/route_import_part.dart';
import 'core/route/route_name.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 840),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
             useMaterial3: false,
            fontFamily: FontConstants.fontFamilyBebasNeue,
            pageTransitionsTheme: PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(), 
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
            scaffoldBackgroundColor:  Color(0xFF121212),
    canvasColor: Color(0xFF121212), 
          ),
          debugShowCheckedModeBanner: false,
          //     theme: ThemeData(
          //   useMaterial3: false,
          //   fontFamily: FontConstants.fontFamilyBebasNeue,
          // ),
          title: 'Iron Ready',
          // home: MainLayout(),
          themeMode: ThemeMode.system,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: RouteName.loadingScreenRoute,
        );
      },
    );
  }
}
