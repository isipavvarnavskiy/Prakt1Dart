import 'dart:math';
import 'dart:io';

void main() {
  print("Введите первое число:");
  double a = double.parse(stdin.readLineSync()!);

  print("Введите второе число:");
  double b = double.parse(stdin.readLineSync()!);

  print("\nВыберите операцию:");
  print("+  — сложение");
  print("-  — вычитание");
  print("*  — умножение");
  print("/  — деление");
  print("~/ — целочисленное деление");
  print("%  — остаток от деления");
  print("pow — возведение в степень");
  print("== — равно");
  print("!= — не равно");
  print(">  — больше");
  print("<  — меньше");
  print(">= — больше или равно");
  print("<= — меньше или равно");

  String op = stdin.readLineSync()!;

  switch (op) {
    case '+':
      print("Результат: ${a + b}");
      break;
    case '-':
      print("Результат: ${a - b}");
      break;
    case '*':
      print("Результат: ${a * b}");
      break;
    case '/':
      if (b != 0) {
        print("Результат: ${a / b}");
      } else {
        print("Ошибка: деление на ноль!");
      }
      break;
    case '~/':
      if (b != 0) {
        print("Результат: ${a ~/ b}");
      } else {
        print("Ошибка: деление на ноль!");
      }
      break;
    case '%':
      if (b != 0) {
        print("Результат: ${a % b}");
      } else {
        print("Ошибка: деление на ноль!");
      }
      break;
    case 'pow':
      print("Результат: ${pow(a, b)}");
      break;
    default:
      if (op == '==') {
        print("Результат: ${a == b}");
      } else if (op == '!=') {
        print("Результат: ${a != b}");
      } else if (op == '>') {
        print("Результат: ${a > b}");
      } else if (op == '<') {
        print("Результат: ${a < b}");
      } else if (op == '>=') {
        print("Результат: ${a >= b}");
      } else if (op == '<=') {
        print("Результат: ${a <= b}");
      } else {
        print("Неизвестная операция!");
      }
  }
}
