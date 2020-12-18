import '../library.dart' as lib;
import 'package:flutter/material.dart';
import '../quizParts/result.dart';
import '../quizParts/question.dart';

class QuizPage extends StatefulWidget {
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<QuizPage> {

  int questionNumber = 0;
  int score = 0;

  Widget build(BuildContext context) {

    if(questionNumber == totalAmountQuestions) {
      return Result();
    } else {
      return Question(questionNumber, score);
    }
  }
}