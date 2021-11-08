import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResults,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kTitleTextStyle),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colorcito: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResultTextStyle),
                  Text(bmiResults, style: kBMITextStyle),
                  Text(interpretation,
                      style: kBodyTextStyle, textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE', onTap: () => Navigator.pop(context))
        ],
      ),
    );
  }
}
