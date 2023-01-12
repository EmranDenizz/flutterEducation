import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  var questions = [
    'Whats\'s your favorite color',
    'Whats\'s your favorite animal',
  ];

  void answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('My Application'),
            centerTitle: true,
            toolbarHeight: 50),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionsIndex],
            ),
            ElevatedButton(
              onPressed: () => answerQuestions(),
              child: Text('Red'),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestions();
              },
              child: Text("blue"),
            )
          ],
        ),
      ),
    );
  }
}
