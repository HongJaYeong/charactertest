import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/test.dart';

class TestScreen extends StatelessWidget {
  static const routename = '/main_screen';

  @override
  Widget build(BuildContext context) {
    final bool isFullTest = ModalRoute.of(context).settings.arguments;
    final questions = chooseQuestions(isFullTest);

    return Scaffold(
      body: Test(questions, isFullTest),
    );
  }
}

List chooseQuestions(bool isFullTest) {
  var index1 = List.generate(11, (i) => i);
  var index2 = List.generate(21, (i) => i + 11);
  var index3 = List.generate(21, (i) => i + 32);
  var index4 = List.generate(21, (i) => i + 53);

  index1.shuffle();
  index2.shuffle();
  index3.shuffle();
  index4.shuffle();

  var indices = [];

  if (isFullTest) {
    indices = index1 + index2 + index3 + index4;
  } else {
    indices = index1.sublist(0, 5) +
        index2.sublist(0, 5) +
        index3.sublist(0, 5) +
        index4.sublist(0, 5);
  }

  indices.shuffle();

  final questions =
      List.generate(isFullTest ? 74 : 20, (i) => testdata[indices[i]]);

  return questions;
}


