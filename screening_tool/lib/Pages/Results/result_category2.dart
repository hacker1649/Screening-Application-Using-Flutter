import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screening_tool/Home/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultCatogory2 extends StatelessWidget {
  const ResultCatogory2({super.key, required this.resetHandler});

  //this result category class which extends a stateless widget recieves a resetHandler function from the main result class 
  //and this resetHandler function basically called whenever the user wants to go through the screening process again (wants to restart screening)
  final VoidCallback resetHandler;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //logo on the top of the screen
              Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 2.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                  child: Image.asset("assets/images/logo.png",width: 35.w, height: 35.h, color: Color(0xffff1a22),),
                ),
              ),
              //main material of desired result to be printed below 
              Container(
                width: double.infinity,
                color: Colors.white,
                height: 300.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 10.sp),
                      child: Text("Result: Suspected for Corona!",
                      style: GoogleFonts.sourceSans3(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                      child: Text("1. Isolate From Others",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                      child: Text("2. Rest and Take Care",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                      child: Text("3. Call Work Health Providers",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                      child: Text("4. Monitor Symptoms",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                      child: Text("5. Talk to Someone About Testing",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                      child: Text("6. Follow Govt Instructions",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12.sp, left: 10.sp, right: 10.sp, top: 12.sp),
                      child: Text("As of now, your answers suggest that you may need testing. If anything changes, take the questionnaire again.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 165.h,),
              //restart screening button in order to restart the screening chapter
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffff1a22),
                    ),
                    onPressed: resetHandler, 
                    child: Text("Restart Screening",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ),
                ),
              ),
              //back to home screen button in order to get back to the home screen 
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffff1a22),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                    }, 
                    child: Text("Back to Home Screen",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



