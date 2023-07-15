import 'package:flutter/material.dart';
import 'package:screening_tool/Splash Screen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'COVID-19 Screening Tool Application',
          home: child,
        );
      },
      child: SplashScreen(),
    );
  }
}



