import 'dart:math';


class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  late double _resultBmi;

  String calculateBMI(){
    _resultBmi = weight / pow(height / 100, 2);
    return _resultBmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_resultBmi >= 25.0){
      return 'Overweight';
    }
    else if(_resultBmi > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getDescription(){
    if(_resultBmi >= 25.0){
      return 'You have a higher than normal body weight.Try to exercise more!';
    }
    else if(_resultBmi > 18.5){
      return 'Your body weight is normal. Nothing left to do just maintain it!';
    }
    else{
      return 'Your weight is lower than normal body weight, Please eat more!';
    }
  }
}