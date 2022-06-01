import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        ResultsPage.routeName: (context) => ResultsPage(),
      },
    );
  }
}
