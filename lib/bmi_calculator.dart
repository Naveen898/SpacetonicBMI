import 'dart:math';

class BMICalculator{
  final int height;
  final int weight;
  double _bmi = 0.0;

  BMICalculator({
    required this.weight,
    required this.height,
  });

  String calculateBMI(){
    _bmi = weight /  pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi<18.5){
      return 'UNDERWEIGHT';
    }
    else if(_bmi >= 18.5 && _bmi<=24.9){
      return 'HEALTHY WEIGHT';
    }
    else if(_bmi >=25.0 && _bmi<=29.9){
      return 'OVERWEIGHT';
    }
    else{
      return 'OBESE';
    }
  }
  String getInterpretation(){
    if (_bmi < 18.5){
      return 'You need to eat more and probably you need to exercise more. Consult your doctor';
    }
    else if(_bmi >= 18.5 && _bmi <= 24.9) {
      return 'You are in a healthy weight range. You can eat more and exercise more';
    }
    else if(_bmi >= 25.0 && _bmi <= 29.9) {
      return 'You need to eat less and probably you need to exercise. Consult your doctor for more details';
    }
    else{
      return 'You are in an obese weight range. You need to eat less and probably you should visit your doctor for futher details';
    }

  }
}

