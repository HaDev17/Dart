//This is a simple calculator programme

import 'dart:io';

int add(int a, int b) {
  return a + b;
}

int multiply(int a, int b) {
  return a * b;
}

int subtract(int a, int b) {
  return a - b;
}

double divide(double a, double b) {
  if (b != 0) return a / b;
  return 0;
}

void main() {
  print('Hello to my calculator');

  while (true) {
    print(
        'Choose the operation you want to do: \n1. Add\n2. Multiply\n3. Subtract\n4. Divide\n5 exit');
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 5) return;
    print('Enter the first number');
    double a = double.parse(stdin.readLineSync()!);
    print('Enter the second number');
    double b = double.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('The sum of $a and $b is ${add(a.toInt(), b.toInt())}');
        break;
      case 2:
        print('The product of $a and $b is ${multiply(a.toInt(), b.toInt())}');
        break;
      case 3:
        print(
            'The difference of $a and $b is ${subtract(a.toInt(), b.toInt())}');
        break;
      case 4:
        print('The division of $a and $b is ${divide(a, b)}');
        break;
      default:
        print('Invalid choice');
    }

    print("\n1. exit \n2. continue");
    int c = int.parse(stdin.readLineSync()!);
    if (c != 2) break;
  }
}
