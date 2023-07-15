import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({super.key});

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
                child: Text("Symptoms",
                style: GoogleFonts.sourceSans3(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              //intro paragraph 
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("The COVID-19 virus affects different people in different ways. COVID-19 is a respiratory disease and most infected people will develop mild to moderate symptoms and recover without requiring special treatment. People who have underlying medical conditions and those over 60 years old have a higher risk of developing severe disease and death.",
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.normal,
                ),),
              ),
              //sub heading no.1 of the page 
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("Common symptoms include:",
                style: GoogleFonts.sourceSans3(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 10.h,),
              //common symptoms no.1
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/1.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Text("Fever and body aches",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //common symptoms no.2
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/2.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Text("Dry Cough",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //common symptoms no.3
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/tirdeness.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Text("Tiredness",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //sub heading no.2 of the page 
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("Other symptoms include:",
                style: GoogleFonts.sourceSans3(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 10.h,),
              //other symptoms no.1
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/8.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Text("Pains and aches",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //other symptoms no.2
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/thorat.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Text("Sore throat",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //other symptoms no.3
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/4.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Text("Shortness of breath",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //other symptoms no.4
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Row(
                  children: [
                    Image.asset("assets/images/intestine.png",width: 80.w, height: 80.h, color: Color(0xffff1a22),),
                    SizedBox(width: 20.w,),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("Very few people will report diarrhoea, nausea or a runny nose.",
                      style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                    ),
                  ],
                )
              ),
              SizedBox(height: 10.h,),
              //closing paragraph
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("People with mild symptoms who are otherwise healthy should self-isolate and contact their medical provider or a COVID-19 information line for advice on testing and referral. People with fever, cough or difficulty breathing should call their doctor and seek medical attention.",
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.normal,
                ),),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}

