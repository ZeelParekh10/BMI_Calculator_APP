import 'package:flutter/material.dart';
import 'screens/input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
          fontFamily: 'Jaldi',
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF0A0e21),
           ),
          scaffoldBackgroundColor: Color(0xFF0A0e21),
        textTheme: TextTheme(bodyMedium: TextStyle(color:Colors.white), )
        ),
      home: InputPage(),
    );
  }
}
