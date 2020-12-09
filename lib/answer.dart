import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Answer extends StatelessWidget {
  final stateHandler;
  final String data;
  Answer(this.stateHandler, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: CupertinoButton(
        onPressed: stateHandler,
        color: Colors.blueAccent[700],
        child: Text(
          data,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
