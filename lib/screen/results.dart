
import 'package:bmi_calculator/comonents/bottom.dart';
import 'package:bmi_calculator/comonents/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../comonents/card.dart';

class Result extends StatelessWidget {

  Result({@required this.bmiResult,@required this.interpretation,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text('YOUR RESULT',style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuableCard(
              colour: kActivecardcolour,
              cardChild: Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // if(resultText.toString() == 'Normal')
                    // {
                    //   return Text(resultText.toUpperCase(), style: kResultColor,),
                    // }
                    // else
                    //   {
                    //   return Text(resultText.toUpperCase(), style: kFolsecolor,),
                    //   },
                   Text(resultText.toUpperCase(),style: kResultColor,),
                    Text(bmiResult,style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text(interpretation,style: TextStyle(fontSize: 22),textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(onTap: (){Navigator.pushNamed(context, '/first');}, buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}

