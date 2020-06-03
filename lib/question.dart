import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 30
      ),
      child:  Text(
        questionText,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
