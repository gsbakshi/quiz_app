import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
import 'questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  int _totalScore = 0;

  void questionIndex(int score) {
    _totalScore += score;
    setState(() {
      _index += 1;
    });
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List ans = answers[index].toList();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _index < QUESTIONS.length
            ? Quiz(questionIndex, QUESTIONS, _index)
            : Result(_totalScore, _reset),
      ),
    );
  }
}
