import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final indexState;
  final List<Map<String, Object>> q;
  final int i;
  const Quiz(
    this.indexState,
    this.q,
    this.i
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(q[i]['question']),
        ...(q[i]['answer'] as List<Map<String, Object>>)
            .map((answer) => Answer(() => indexState(answer['score']), answer['text']))
            .toList(),
      ],
    );
  }
}
