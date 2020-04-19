import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const routename = '/result_screen';
  static const characterList = [
    ['E', 'I'],
    ['S', 'N'],
    ['T', 'F'],
    ['J', 'P']
  ];

  @override
  Widget build(BuildContext context) {
    List<List<int>> score = ModalRoute.of(context).settings.arguments;
    String result = getResult(score);

    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.2,
                0.7
              ],
              colors: [
                Colors.blue[900],
                Colors.blue,
              ]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  result,
                  style: TextStyle(
                      fontSize: 80, color: Colors.white, letterSpacing: 10),
                ),
                SizedBox(height: 30),
                Column(
                  children: <Widget>[
                    characterBar(score[0], 0),
                    characterBar(score[1], 1),
                    characterBar(score[2], 2),
                    characterBar(score[3], 3),
                  ],
                ),
                SizedBox(height: 70),
                OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    borderSide: BorderSide(color: Colors.white),
                    child: Text('Restart',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    onPressed: () {
                      Navigator.of(context)..pop()..pop();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getResult(List<List<int>> score) {
    var result = '';

    for (int i = 0; i < 4; i++) {
      result += (score[i][0] > score[i][1])
          ? characterList[i][0]
          : characterList[i][1];
    }

    // score[0][0] > score[0][1] ? result += 'E' : result += 'I';
    // score[1][0] > score[1][1] ? result += 'S' : result += 'N';
    // score[2][0] > score[2][1] ? result += 'T' : result += 'F';
    // score[3][0] > score[3][1] ? result += 'J' : result += 'P';

    return result;
  }

  Widget characterBar(List<int> score, int i) {
    double ratio = score[0] / (score[0] + score[1]);

    return Container(
      height: 30,
      width: 300,
      margin: const EdgeInsets.symmetric(vertical: 10),
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.white),
      // ),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            child: Center(
              child: Text(characterList[i][0],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [
                      ratio-0.05,
                      ratio+0.05,
                    ],
                    colors: [
                      Colors.red[400],
                      Colors.yellow[300],
                    ]),
              ),
            ),
          ),
          // Expanded(
          //   flex: firstPercent,
          //   child: Container(
          //     color: Colors.red[400],
          //   ),
          //   ),
          // Expanded(
          //   flex: secondPercent,
          //   child: Container(
          //     color: Colors.yellow[300],
          //   ),
          // ),
          SizedBox(width: 10,),
          Container(
            width: 40,
            child: Center(
              child: Text(characterList[i][1],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
