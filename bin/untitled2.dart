import 'dart:io';

void main() {
  print('Kalkulyator dasturiga xush kelibsiz!');
  bool done = false;

  while (!done) {
    print('Operatsiyani kiriting (+, -, *, /) yoki chiqish uchun "chiqish" ni kiriting:');
    String input = stdin.readLineSync()!;

    if (input == 'quit') {
      done = true;
      print('Dasturdan chiqish.');
    } else if (input == '+' || input == '-' || input == '*' || input == '/') {
      print('Birinch raqamni kiriting :');
      double num1 = double.parse(stdin.readLineSync()!);

      print('Ikkinchi raqamni kiriting :');
      double num2 = double.parse(stdin.readLineSync()!);

      double? result;

      switch (input) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          result = num1 / num2;
          break;
      }

      print("Natija : $result");
    } else {
      print("'Yaroqsiz operatsiya. Iltimos, yana bir bor urinib ko'ring.'");
    }
  }
}
