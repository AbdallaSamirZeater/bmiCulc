import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int weight;
  final int height;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overWeight';
    } else if (_bmi > 18.5) {
      return 'normal';
    }else{
      return 'underWeight';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You have a higher than the normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good job!';
    }else{
      return 'You have a lower than the normal body weight. You can eat a bit more.';
    }
  }
}
