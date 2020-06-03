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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You\'re ' + phrase),
            FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Reset Quiz',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
          ]),
    );
  }
}
