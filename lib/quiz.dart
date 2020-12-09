import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Function indexState;
  final List<Map<String, Object>> q;
  final int i;
  const Quiz(this.indexState, this.q, this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: Container(), flex: 1),
        Question(q[i]['question']),
        Expanded(child: Container(), flex: 2),
        ...(q[i]['answer'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(() => indexState(answer['score']), answer['text']))
            .toList(),
        Expanded(child: Container(), flex: 6),
      ],
    );
  }
}
