import 'package:flutter/material.dart';
import 'package:screening_tool/Pages/Results/result.dart';
import 'package:screening_tool/Pages/Screening/test.dart';

class ScreeningPage extends StatefulWidget {
  const ScreeningPage({super.key});

  @override
  State<ScreeningPage> createState() => _ScreeningPageState();
}

class _ScreeningPageState extends State<ScreeningPage> {
  //making a list called symptoms in order to manage 10 screening questions and their answers (options) with the desired score (1/2) in order to calculate result
  var symptoms=[
    {
      'question': 'Do you have Fever above 101.4?',
      'visualization': 'assets/images/1.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Do you have Cough - (Dry Cough)?',
      'visualization': 'assets/images/2.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Do you have Cough - (Wet Cough)?',
      'visualization': 'assets/images/3.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Do you have Shortness of Breath?',
      'visualization': 'assets/images/4.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Do you have Flu?',
      'visualization': 'assets/images/5.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Have you travelled abroad in the last 15 days?',
      'visualization': 'assets/images/6.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Have you been in contact with any person who has recently travelled internationally?',
      'visualization': 'assets/images/7.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Do you have chest infection?',
      'visualization': 'assets/images/8.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Is your age more than or equal to 60 years of age?',
      'visualization': 'assets/images/9.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
    {
      'question': 'Due to Co-morbidities, do you take any medicine?',
      'visualization': 'assets/images/10.png',
      'options': [
        { 'text': 'Yes, I do', 'score': 1 },
        { 'text': 'No, I don\'t', 'score': 2 },
      ],
    },
  ];
  //created integer index (unique index to each screening question) which helps us to rotate the questions  
  int index=0;
  //created answer array in order to store the answer of every screening question on its index place, and also initialized it all the entities with zero
  //score should be 1 (if the user select yes) and the score should either be 2 (if the user select no) 
  var answer=[0,0,0,0,0,0,0,0,0,0];
  //key presser function is called whenever the user click on one of the two options (Yes, I do/No, I don't)
  void keyPresser(int score){
    //also we updates the value of the answer array at that question index to the score value (1/2, the one option which user clicks at the run time)
    answer[index]=score;
    //it updates the index bt 1 (so that the answers must be rotating accordingly)
    setState(() {
      index=index+1;
    });
  }
  //restart screening function is called if the user wants to go through the screening process again
  void restartScreening(){
    setState(() {
      //for restarting we have made the value of index as well as all the values of the answer array to zero
      index=0;
      for(var i=0;i<answer.length;i++){
        answer[i]=0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        //if the desired question index is smaller then the total questions (means the desired question is not the last question)
        //then we move forward to the ScreeningTest page otherwise we move towards the ScreeningPage
        body: index < symptoms.length ?
        ScreeningTest(keyPresser: keyPresser, symptoms: symptoms, index: index) :
        ScreeningResult(resetHandler: restartScreening, answer: answer,),
      ),
    );
  }
}


