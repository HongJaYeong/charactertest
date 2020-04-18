import 'package:charactertest/screens/test_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const routename = '/main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(),
            Text(
              'MBTI',
              style: TextStyle(
                fontSize: 70,
                letterSpacing: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 150,),
            chooseTestButton(context, false),
            SizedBox(height: 10,),
            chooseTestButton(context, true),
          ],
        ),
      ),
    );
  }

  Widget chooseTestButton(BuildContext ctx, bool isFullTest) {
    var testName = isFullTest? 'Full Test' : 'Simple Test';

    return OutlineButton(
              //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              shape: StadiumBorder(),
              borderSide: BorderSide(color: Colors.blue, width: 3),
              child: Container(
                height: 40,
                width: 140,
                child: Center(
                  child: Text(
                    testName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(ctx).pushNamed(
                  TestScreen.routename,
                  arguments: isFullTest ? true : false,
                );
              },
            );
  }
}
