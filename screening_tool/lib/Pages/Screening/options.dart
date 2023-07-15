import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreeningOptions extends StatelessWidget {
  const ScreeningOptions({super.key, required this.answertext, required this.selectHandler,});

  //this options class which extends a stateless widget takes a string named as answertext to be printed as the text for the elevated button 
  //and it also takes a function named as selectHandler which works whenever the user clicks that elevated button (an option for the question)
  final String answertext;
  final VoidCallback selectHandler;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffff1a22),
          ),
          onPressed: selectHandler,
          child: Text(answertext,
            style: GoogleFonts.sourceSans3(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}


