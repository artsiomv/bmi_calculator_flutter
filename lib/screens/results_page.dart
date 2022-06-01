import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class ResultsPageArguments {
  final String bmiResult;
  final String resultTest;
  final String interpretaion;
  ResultsPageArguments(
      {@required this.bmiResult,
      @required this.resultTest,
      @required this.interpretaion});
}

class ResultsPage extends StatelessWidget {
  static const routeName = '/resultsPage';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings?.arguments as ResultsPageArguments;
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
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              myColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.resultTest.toUpperCase(),
                    style: kResultsTextStyle,
                  ),
                  Text(
                    args.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.interpretaion,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
