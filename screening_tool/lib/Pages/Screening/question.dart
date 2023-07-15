import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreeningQuestions extends StatelessWidget {
  const ScreeningQuestions({super.key, required this.text,});

  //this question class which extends a stateless widget takes a string name as text and printed it on the screen 
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(text,
          textAlign: TextAlign.center,
          style: GoogleFonts.sourceSans3(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


