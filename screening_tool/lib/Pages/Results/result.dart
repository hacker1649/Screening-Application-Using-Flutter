import 'package:flutter/material.dart';
import 'package:screening_tool/Pages/Results/result_category1.dart';
import 'package:screening_tool/Pages/Results/result_category2.dart';
import 'package:screening_tool/Pages/Results/result_category3.dart';

class ScreeningResult extends StatelessWidget {
  const ScreeningResult({super.key, required this.resetHandler, required this.answer,});

  //this result class which extends a stateless widget takes a function resetHandler which then forwarded to all the 3 different result categories
  //also it takes the answer list (array) that we made in order to store the answers (score i.e. 1/2) to each respective question
  //in order to calculate the screening result  
  final VoidCallback resetHandler;
  final List<int> answer;
  // Result Calculation:
  // If q1, q2, q4, q8, q9, q6 = yes and q3, q5, q7, q10 = yes/no then result 1
  // If q2, q1, q4 = yes and q3, q6, q5, q7, q10 = yes/no and q8, q9 = yes/no then result 2
  // Otherwise show the result 3
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: 
          answer[0]==1&&answer[1]==1&&answer[3]==1&&answer[5]==1&&answer[7]==1&&answer[8]==1 ?
          //for printing 1st category of result 
          ResultCatogory1(resetHandler: resetHandler,) 
          : answer[0]==1&&answer[1]==1&&answer[3]==1&&answer[5]==2&&answer[7]==2&&answer[8]==2 ?
          //for printing 2nd category of result 
          ResultCatogory2(resetHandler: resetHandler,) 
          :
          //for printing 3rd category of result 
          ResultCatogory3(resetHandler: resetHandler,),
      ),
    );
  }
}


