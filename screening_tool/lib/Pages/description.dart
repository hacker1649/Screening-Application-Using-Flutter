import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Description extends StatelessWidget {
  const Description({super.key});

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
                child: Text("COVID-19",
                style: GoogleFonts.sourceSans3(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              //intro paragraph no.1
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("Coronavirus disease (COVID-19) is an infectious disease caused by a new virus.",
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.normal,
                ),),
              ),
              //intro paragraph no.2
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("The disease causes respiratory illness (like the flu) with symptoms such as a cough, fever, and in more severe cases, difficulty breathing. You can protect yourself by washing your hands frequently, avoiding touching your face, and avoiding close contact (1 meter or 3 feet) with people who are unwell.",
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.normal,
                ),),
              ),
              //sub heading of the page  
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("How it spreads",
                style: GoogleFonts.sourceSans3(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              //closing paragraph
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: Text("Coronavirus disease spreads primarily through contact with an infected person when they cough or sneeze. It also spreads when a person touches a surface or object that has the virus on it, then touches their eyes, nose, or mouth.",
                style: GoogleFonts.sourceSans3(
                  fontWeight: FontWeight.normal,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.sp, left: 10.sp, right: 10.sp, top: 0.sp),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "To learn more ",
                        style: GoogleFonts.sourceSans3(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: "Click here",
                        style: GoogleFonts.sourceSans3(
                          color: Color(0xffff1a22),
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () async {
                          final Uri url = Uri.parse('https://www.who.int/health-topics/coronavirus');
                          if(await canLaunchUrl(url)){
                            await launchUrl(url);
                          }
                          else{
                            throw Exception('Could not launch $url');
                          }
                        }
                      ),
                    ]
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

