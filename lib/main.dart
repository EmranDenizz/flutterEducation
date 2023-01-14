import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questionList = [
    'What is favorite color?',
    'What is favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter excersis'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(
              questionList[questionIndex],
            ),
            Answer().callBackFonk(),
            Answer(questionIndex),
          ],
        ),
      ),
    );
  }
}
