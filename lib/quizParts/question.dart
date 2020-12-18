import 'package:flutter/material.dart';
import '../library.dart' as lib;
import 'answer-button.dart';

Question(this.questionNumber, this.score);

class Question extends StatelessWidget {

  final int questionNumber;
  final int score;

  Widget build(BuildContext context) {
    return ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: lib.textMarge),
                        child: Text('score: 10', style: lib.basicText),
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image.asset('lib/assets/images/appieheader.png',
                fit: BoxFit.fitWidth,
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 50,
                ),
                child: Container(
                  child: Text('What is the question?',
                  style: lib.headerText,
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AnswerButton(),
                  AnswerButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AnswerButton(),
                  AnswerButton(),
            ],
                  ),
                  ],
    );
  }
}

