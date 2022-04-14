import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age });

  final int height;
  final int weight;
  final int age;

  double _bmi;
  double _add;
  String calculateBMI() {
    _add = weight.toDouble()+height.toDouble();
    _bmi = pow(_add, age);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 500000) {
      return 'Overweight';
    } else if (_bmi <= 500000) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 500000) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi <= 500000) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
