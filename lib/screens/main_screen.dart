import 'package:charactertest/screens/test_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const routename = '/main_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'MBTI',
                      style: TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                        letterSpacing: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '16 Charateristics',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        letterSpacing: 5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Center(
                    child: Icon(
                  Icons.accessibility_new,
                  size: 35,
                  color: Colors.yellow,
                )),
              ),
              chooseTestButton(context, false),
              SizedBox(
                height: 10,
              ),
              chooseTestButton(context, true),
            ],
          ),
        ),
      ),
    );
  }

  Widget chooseTestButton(BuildContext ctx, bool isFullTest) {
    var testName = isFullTest ? 'Full Test' : 'Simple Test';

    return OutlineButton(
      //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      shape: StadiumBorder(),
      borderSide: BorderSide(color: Colors.white, width: 3),
      highlightElevation: 1,
      child: Container(
        height: 40,
        width: 150,
        child: Center(
          child: Text(
            testName,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
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
