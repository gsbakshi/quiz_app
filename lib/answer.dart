import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final stateHandler;
  final String data;
  Answer(this.stateHandler, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        // vertical: 30
      ),
      child: RaisedButton(
        onPressed: stateHandler,
        // shape: ,
        color: Colors.blue,
        child: Text(
          data,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
