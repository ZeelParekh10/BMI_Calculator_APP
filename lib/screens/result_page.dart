import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator_app/calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult,required this.resultText,required this.interpretation,});
  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child:Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex:5,
              child: ReusableCard(
                onPress: (){},
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    Text(resultText.toUpperCase(), style:kResultTextStyle, textAlign: TextAlign.center,),
                    Text(bmiResult, style:kBMITextStyle),
                    Text(interpretation, style:kBodyTextStyle, textAlign: TextAlign.center,),
                  ],
                ),
              ),),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: "Re-Calculate"),
        ],
      ),
    );
  }
}
