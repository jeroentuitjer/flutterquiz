import 'package:flutter/material.dart';
import 'ui/welcome.dart';
import 'ui/info.dart';
import 'ui/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: QuizMenu()
    );

  }
}

class QuizMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Quiz'),
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.blueAccent,
          labelColor: Colors.blueAccent,
          tabs: [
            Tab(icon: Icon(Icons.home),text:'welcome'),
            Tab(icon: Icon(Icons.live_help),text:'Quiz!'),
            Tab(icon: Icon(Icons.info),text:'Information'),
          ],
        ),
        body: TabBarView(
          children: [
            WelcomePage(),
            QuizPage(),
            InfoPage(),
          ],
        ),
      ),
    );
  }

}