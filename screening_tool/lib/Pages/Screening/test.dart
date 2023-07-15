import 'package:flutter/material.dart';
import 'package:screening_tool/Pages/Screening/image.dart';
import 'package:screening_tool/Pages/Screening/options.dart';
import 'package:screening_tool/Pages/Screening/question.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreeningTest extends StatelessWidget {
  const ScreeningTest({super.key, required this.keyPresser, required this.symptoms, required this.index});

  //this test class which extends a stateless widget takes a function keypresser which is passed onwards to another class
  //it also takes the whole symptoms list and the index value to search for the question and the answer (options) 
  final Function keyPresser;
  final List<Map<String,Object>> symptoms;
  final int index;
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
                  padding: EdgeInsets.only(bottom: 2.sp, left: 10.sp, right: 10.sp, top: 3.sp),
                  child: Image.asset("assets/images/logo.png",width: 35.w, height: 35.h, color: Color(0xffff1a22),),
                ),
              ),
              SizedBox(height: 10.h,),
              //for displaying questions
              ScreeningQuestions(text: symptoms[index]['question'].toString()),
              SizedBox(height: 50.h,),
              //for displaying question visualization
              ScreeningImage(path: symptoms[index]['visualization'].toString()),
              SizedBox(height: 50.h,),
              //for displaying options
              ...(symptoms[index]['options'] as List<Map<String,Object>>).map((option) {
                return ScreeningOptions(selectHandler: () => keyPresser(option['score']), answertext: option['text'].toString());
              }).toList(),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}


