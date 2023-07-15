import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screening_tool/Pages/description.dart';
import 'package:screening_tool/Pages/prevention.dart';
import 'package:screening_tool/Pages/Screening/screening.dart';
import 'package:screening_tool/Pages/symptoms.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //logo on the top of the screen
              Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                  child: Image.asset("assets/images/logo.png",width: 35.w, height: 35.h, color: Color(0xffff1a22),),
                ),
              ),
              //the main heading, definition and image on the side bar 
              Container(
                width: double.infinity,
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('COVID-19 \nScreening Tool',
                          style: GoogleFonts.sourceSans3(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10.h,),
                          Text('Use this self-assessment tool to help \ndetermine whether you need to be \ntested for COVID-19.',
                          style: GoogleFonts.sourceSans3(
                            fontWeight: FontWeight.normal,
                          ),),
                          SizedBox(height: 15.h,),
                          Text('You can complete this assessment for \nyourself or on behalf of someone \nelse, if they are not able.',
                          style: GoogleFonts.sourceSans3(
                            fontWeight: FontWeight.normal,
                          ),),
                        ],
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Image.asset("assets/images/covid19screen.png",width: 220.w, height: 220.h,),
                      ),
                    ],
                  ),
                ),
              ),
              //the start screening button
              Container(
                width: double.infinity,
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffff1a22),
                    ),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ScreeningPage()));}, 
                    child: Text("Start Screening",
                    style: GoogleFonts.sourceSans3(
                      fontWeight: FontWeight.normal,
                    ),),
                  ),
                ),
              ),
              //the more information heading 
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Text('More Information',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),),
                ),
              ),
              //description navigator container button
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => Description())));},
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.sp, left: 10.sp, right: 10.sp, bottom: 10.sp,),
                    child: Row(
                      children: [
                        Image.asset("assets/images/virus.png",width: 45.w, height: 45.h, color: Color(0xffff1a22),),
                        SizedBox(width: 20.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What is COVID-19?',
                            style: GoogleFonts.sourceSans3(
                                fontWeight: FontWeight.bold,
                              ),),
                            Container(
                              width: 240.w,
                              color: Colors.white,
                              child: Text('Coronavirus disease (COVID-19) is an infectious disease ...',
                              style: GoogleFonts.sourceSans3(
                                  fontWeight: FontWeight.normal,
                                ),),
                            ),
                          ],
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Image.asset("assets/images/next.png",width: 25.w, height: 25.h, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.black12, thickness: 1.sp,),
              //symptoms navigator container button
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => Symptoms())));},
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 10.sp, top: 10.sp,),
                    child: Row(
                      children: [
                        Image.asset("assets/images/symptoms.png",width: 45.w, height: 45.h, color: Color(0xffff1a22),),
                        SizedBox(width: 20.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What are its Symtomps?',
                            style: GoogleFonts.sourceSans3(
                                fontWeight: FontWeight.bold,
                              ),),
                            Container(
                              width: 240.w,
                              color: Colors.white,
                              child: Text('The COVID-19 virus affects different people in different ways...',
                              style: GoogleFonts.sourceSans3(
                                  fontWeight: FontWeight.normal,
                                ),),
                            ),
                          ],
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Image.asset("assets/images/next.png",width: 25.w, height: 25.h, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.black12, thickness: 1.sp,),
              //prevention navigator container button
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => Prevention())));},
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 10.sp, top: 10.sp,),
                    child: Row(
                      children: [
                        Image.asset("assets/images/prevent.png",width: 45.w, height: 45.h, color: Color(0xffff1a22),),
                        SizedBox(width: 20.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('How can you prevent it?',
                            style: GoogleFonts.sourceSans3(
                                fontWeight: FontWeight.bold,
                              ),),
                            Container(
                              width: 240.w,
                              color: Colors.white,
                              child: Text('There\'s currently no vaccine to prevent coronavirus disease...',
                              style: GoogleFonts.sourceSans3(
                                  fontWeight: FontWeight.normal,
                                ),),
                            ),
                          ],
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Image.asset("assets/images/next.png",width: 25.w, height: 25.h, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.black12, thickness: 1.sp,),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}



