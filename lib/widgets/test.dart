import 'dart:math';

import 'package:flutter/material.dart';

import '../screens/result_screen.dart';

class Test extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final bool isFullTest;

  Test(this.questions, this.isFullTest);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  // List<Map<String, Object>> questions;
  var idx = 0;
  var score = [
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0]
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   questions = widget.questions;
  // }

  @override
  Widget build(BuildContext context) {
    // answer 버튼 순서 랜덤 배치
    var rng = Random();
    var random = rng.nextInt(2);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  widget.questions[idx]['question'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Expanded(child: answerButton(random)),
                Expanded(child: answerButton(1 - random)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget answerButton(int position) {
    String whichAnswer;

    if (position == 0) {
      whichAnswer = 'answer1';
    } else {
      whichAnswer = 'answer2';
    }

    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          score[widget.questions[idx]['type']][position]++;

          if (idx < widget.questions.length - 1) {
            setState(() {
              idx++;
            });
          } else {
            Navigator.of(context).pushNamed(
              ResultScreen.routename,
              arguments: score,
            );
          }
        },
        child: answerBox(widget.questions[idx][whichAnswer]),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  Widget answerBox(String answer) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Center(
        child: Text(
          answer,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
