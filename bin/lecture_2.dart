import 'dart:io';

void main() {
  while (true) {
    print('Введіть перше число (або "exit" для виходу):');
    final inputFirstNumber = stdin.readLineSync();

    if (inputFirstNumber == 'exit') break;

    print('Введіть друге число:');
    final inputSecondNumber = stdin.readLineSync();

    int? firstNumber = int.tryParse(inputFirstNumber!);
    int? secondNumber = int.tryParse(inputSecondNumber!);

    if (firstNumber == null || secondNumber == null) {
      print('Некоректні дані! Введіть числа.');
      continue;
    }

    print('Введіть третє число (опціонально, або просто натисніть Enter):');
    final inputThirdNumber = stdin.readLineSync();
    final thirdNumber = int.tryParse(inputThirdNumber!);

    final result = calculateSum(firstNumber, secondNumber, thirdNumber);

    print('Сума: $result');
  }

  print('Програма завершена.');
}

int calculateSum(int a, int b, [int? c]) {
  if (c != null) {
    return a + b + c;
  }
  return a + b;
}
