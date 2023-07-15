import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screening_tool/Home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:7), () {
      Navigator.push(context, MaterialPageRoute(builder:(context) => MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.loose,
          children: [
            Image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
              image: AssetImage('assets/corona_virus.png'),
            ),
            Container(color: Colors.black.withOpacity(0.6),),
            Positioned(
              left: 15.sp, right: 0.sp, top: 380.sp,
              child: Text("COVID-19\n",
              style: GoogleFonts.sourceSans3(
                color: Color(0xffff1a22),
                fontSize: 70.sp,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Positioned(
              left: 20.sp, right: 0.sp, top: 460.sp,
              child: Text("Screening Application\n",
              style: GoogleFonts.sourceSans3(
                color: Color(0xffff1a22),
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Positioned(
              left: 20.sp, right: 10.sp, top: 510.sp,
              child: Text("Use this self-assessment tool to help determine whether you need to be tested for COVID-19.",
                style: GoogleFonts.sourceSans3(
                  color: Color(0xffff1a22),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}


