// Fibonacci series is a series of numbers in which each number is the sum of the two preceding ones,
// usually starting with 0 and 1.

import 'dart:io';

void main() {
  int u_0 = 0;
  int u_1 = 1;

  print("Enter the term number: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n == 0) {
    print(u_0);
  } else if (n == 1) {
    print(u_1);
  } else {
    int u_n = 0;
    for (int i = 2; i <= n; i++) {
      u_n = u_0 + u_1;
      u_0 = u_1;
      u_1 = u_n;
    }
    print(u_n);
  }
}
