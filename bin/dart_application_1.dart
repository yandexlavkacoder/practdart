import 'dart:math';
import 'dart:io';

void main() {
  // Ввод первого числа
  print("Введите первое число:");
  String input1 = stdin.readLineSync() ?? "0";
  double num1 = double.tryParse(input1) ?? 0.0;

  // Ввод второго числа
  print("Введите второе число:");
  String input2 = stdin.readLineSync() ?? "0";
  double num2 = double.tryParse(input2) ?? 0.0;

  // Ввод операции
  print("Введите операцию (+, -, *, /, ~/, %, ^, ==, !=, >, <, >=, <=):");
  String operation = stdin.readLineSync() ?? "+";

  // Оценка 3 - арифметические операции
  if (operation == "+") {
    double result = num1 + num2;
    print("$num1 + $num2 = $result");
  } else if (operation == "-") {
    double result = num1 - num2;
    print("$num1 - $num2 = $result");
  } else if (operation == "*") {
    double result = num1 * num2;
    print("$num1 * $num2 = $result");
  } else if (operation == "/") {
    if (num2 != 0) {
      double result = num1 / num2;
      print("$num1 / $num2 = $result");
    } else {
      print("Ошибка: деление на ноль!");
    }
  } else if (operation == "~/") {
    if (num2 != 0) {
      int result = num1 ~/ num2;
      print("$num1 ~/ $num2 = $result");
    } else {
      print("Ошибка: деление на ноль!");
    }
  } else if (operation == "%") {
    if (num2 != 0) {
      double result = num1 % num2;
      print("$num1 % $num2 = $result");
    } else {
      print("Ошибка: деление на ноль!");
    }
  } else if (operation == "^" || operation == "pow") {
    double result = pow(num1, num2).toDouble();
    print("$num1 ^ $num2 = $result");
  }
  // Оценка 4 - операции сравнения
  else if (operation == "==") {
    bool result = num1 == num2;
    print("$num1 == $num2 : $result");
  } else if (operation == "!=") {
    bool result = num1 != num2;
    print("$num1 != $num2 : $result");
  } else if (operation == ">") {
    bool result = num1 > num2;
    print("$num1 > $num2 : $result");
  } else if (operation == "<") {
    bool result = num1 < num2;
    print("$num1 < $num2 : $result");
  } else if (operation == ">=") {
    bool result = num1 >= num2;
    print("$num1 >= $num2 : $result");
  } else if (operation == "<=") {
    bool result = num1 <= num2;
    print("$num1 <= $num2 : $result");
  }
  // Оценка 5 - логические операции
  else {
    print("\nДля логических операций нужно вводить true/false");
    print("Введите первое логическое значение (true/false):");
    String bool1Input = stdin.readLineSync() ?? "false";
    bool bool1 = bool1Input.toLowerCase() == "true";
    
    print("Введите второе логическое значение (true/false):");
    String bool2Input = stdin.readLineSync() ?? "false";
    bool bool2 = bool2Input.toLowerCase() == "true";
    
    if (operation == "&&") {
      bool result = bool1 && bool2;
      print("$bool1 && $bool2 = $result");
    } else if (operation == "||") {
      bool result = bool1 || bool2;
      print("$bool1 || $bool2 = $result");
    } else if (operation == "!") {
      bool result = !bool1;
      print("!$bool1 = $result");
    } else {
      print("Неизвестная операция: $operation");
    }
  }

  switch (operation) {
    case "+":
      print("Вы выбрали сложение");
      break;
    case "-":
      print("Вы выбрали вычитание");
      break;
    case "*":
      print("Вы выбрали умножение");
      break;
    case "/":
      print("Вы выбрали деление");
      break;
    default:
      print("Другая операция: $operation");
  }
}