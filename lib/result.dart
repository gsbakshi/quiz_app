import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int res;
  final resetHandler;
  Result(this.res, this.resetHandler);

  String get phrase {
    if (res <= 0) {
      return 'ehh';
    } else if (res <= 10) {
      return 'meh';
    } else if (res <= 20) {
      return 'hmmm';
    } else if (res <= 30) {
      return 'something';
    } else if (res <= 40) {
      return 'interesting';
    } else {
      return 'cool';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(),
            flex: 6,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: Text(
              'You\'re... ' + phrase,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Container(),
            flex: 1,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: CupertinoButton(
              onPressed: resetHandler,
              child: Text(
                'Reset Quiz',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blueAccent[700],
            ),
          ),
          Expanded(
            child: Container(),
            flex: 8,
          ),
        ],
      ),
    );
  }
}
