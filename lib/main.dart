import 'package:flutter/material.dart';

import './question.dart';

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

  void changeQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

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
            ElevatedButton(
              onPressed: (changeQuestion),
              child: Text('Button1'),
            ),
            ElevatedButton(
              onPressed: (changeQuestion),
              child: Text('Button2'),
            ),
          ],
        ),
      ),
    );
  }
}
