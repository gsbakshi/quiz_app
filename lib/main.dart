import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
import 'questions.dart';

void main() => runApp(MyApp());

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
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List ans = answers[index].toList();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.indigoAccent[700],
        ),
        body: _index < QUESTIONS.length
            ? Quiz(questionIndex, QUESTIONS, _index)
            : Result(_totalScore, _reset),
      ),
    );
  }
}
