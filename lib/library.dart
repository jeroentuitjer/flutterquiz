library library;
import 'package:flutter/material.dart';
import 'ui/welcome.dart';
import 'ui/info.dart';
import 'ui/quiz.dart';

const double textMarge = 10.0;
const TextStyle basicText = TextStyle(fontFamily: 'Verdana', fontSize: 16);
const TextStyle headerText = TextStyle(fontFamily: 'Verdana', fontSize: 18, fontWeight: FontWeight.bold);

List<dynamic> questions = [{
  'question': 'This logo is from?',
  'answers': ['Jumbo', 'Dirk', 'Albert Heijn', 'Edah'],
  'correct': 3,
  'image': 'logoalbertheijn.png'
} , {
  'question': 'What kind of vegetable is this?',
  'answers': ['Lettuce', 'Tomato', 'Melon', 'Cucumber'],
  'correct': 4,
  'image': 'cucumber.png'
}];