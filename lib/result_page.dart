import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'constants.dart';
import 'calculator_brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.interpretion,
      @required this.bmiResult,
      @required this.resultText});
  final String interpretion;
  final String bmiResult;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Expanded(
                          child: Text(resultText,
                              style: TextStyle(color: Colors.green))),
                      Expanded(
                          child: Text(bmiResult,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40))),
                      Expanded(
                          child: Container(alignment: Alignment.center,padding: EdgeInsets.all(10),child: Text(interpretion, style: TextStyle(fontSize: 20),textAlign: TextAlign.center, ))),
                          
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'RE-CALCULATE',
                  style: kLargButtonTextStyle,
                ),
                color: kButtonContainerColor,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
