import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Prevention extends StatelessWidget {
  const Prevention({super.key});

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
              //main heading of the page 
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 10.sp),
                child: Text("Prevention",
                style: GoogleFonts.sourceSans3(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              //intro paragraph 
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("There's currently no vaccine to prevent coronavirus disease (COVID-19). You can protect yourself and help prevent spreading the virus to others if you do the following:",
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.normal,
                ),),
              ),
              SizedBox(height: 10.h,),
              //prevention no.1
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/hands.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("Wash your hands regularly with soap and water, or clean them with alcohol-based hand rub.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //prevention no.2
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/distance.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("Maintain at least 1 metre distance between you and people coughing or sneezing.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //prevention no.3
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/away.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("To help prevent infections, keep your hands away from your eyes, nose, and mouth.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //prevention no.4
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/cover.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("Cover your mouth and nose when coughing or sneezing.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //prevention no.5
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/home.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("Stay home if you feel unwell. Staying home right now isn't just about keeping you and your family safe—it's about helping to save the lives of others.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //prevention no.6
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/lungs.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("Refrain from smoking and other activities that weaken the lungs.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //prevention no.7
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/physica.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("Practice physical distancing by avoiding unnecessary travel and staying away from large groups of people.",
                      style: GoogleFonts.sourceSans3(
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}

