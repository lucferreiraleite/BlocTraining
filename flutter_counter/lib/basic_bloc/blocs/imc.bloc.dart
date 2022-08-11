import 'package:flutter/widgets.dart';

class ImcBloc {
  final heightControl = TextEditingController();
  final weightControl = TextEditingController();
  var result = "Give me straight!";

  calculator() {
    double weight = double.parse(weightControl.text);
    double height = double.parse(heightControl.text) / 100;
    double imc = weight / (height * height);

    if (imc < 18.6) {
      result = "You're underweight. You've scored $imc";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Ideal, perfect You've scored $imc";
    } else if (imc >= 24.9 && imc <= 29.9) {
      result = "Slighty overweight. You've scored $imc";
    } else if (imc >= 24.9 && imc <= 34.9) {
      result = "Early obesity. You've scored $imc";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Obesity. You've scored $imc";
    } else if (imc >= 40) {
      result = "Obesity level 3. You've scored $imc";
    }
  }
}
