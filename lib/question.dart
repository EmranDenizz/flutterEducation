import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10), //Çevre ile arada mesafe oluşturur
      padding: EdgeInsets.all(10), //içten boşluk oluşturur
      width: double.infinity, //Max boyut uzunluğu verir.
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
