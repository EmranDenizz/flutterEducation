import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callBackFonk;

  Answer(
    this.callBackFonk,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.green)),
        child: Text('Answer'),
        onPressed: callBackFonk(),
      ),
    );
  }
}
