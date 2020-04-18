import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const routename = '/result_screen';

  @override
  Widget build(BuildContext context) {
    List<List<int>> score = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Text(score[0][0].toString()),
              Text(score[0][1].toString()),
              Text(score[1][0].toString()),
              Text(score[1][1].toString()),
              Text(score[2][0].toString()),
              Text(score[2][1].toString()),
              Text(score[3][0].toString()),
              Text(score[3][1].toString()),
              FlatButton(
                  child: Text('Restart'),
                  onPressed: () {
                    Navigator.of(context)..pop()..pop();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
