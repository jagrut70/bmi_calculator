import 'dart:math';

class CalculatorBrain
{
  CalculatorBrain({this.weight,this.height});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight /pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
}
String getResult(){
    if(_bmi >=25) {
        return 'Overweight';
      }
    else if(_bmi >= 18.25){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
}

  String getInterPretation(){
    if(_bmi >=25) {
      return 'You have a higher than normal weight. Try to exercise more.';
    }
    else if(_bmi >= 18.25){
      return 'You have a normal weight. Good job!';
    }
    else{
      return 'You have a lower than normal weight. You can eat a bit more.';
    }
  }

}