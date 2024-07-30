//Loops in dart

// Loops are used to execute a block of code repeatedly until a certain condition is met.
// Dart supports the following types of loops:

// 1.  for loop
// for(initialization; condition; increment/decrement) {
//   code to be executed
// }

// 2.  for-in loop
// for(variable in iterable) {
//   code to be executed
// }

// 3.  while loop
// while(condition) {
//   code to be executed
// }

// 4.  do-while loop
// do {
//   code to be executed
// } while(condition);

// Examples :

void main() {
  // for loop
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // Output: 1 2 3 4 5

  // for-in loop
  List<int> numbers = [1, 2, 3, 4, 5]; // List of numbers
  for (int number in numbers) {
    print(number);
  }

  // Output: 1 2 3 4 5

  // while loop
  int i = 1;
  while (i <= 5) {
    print(i);
    i++;
  }

  // Output: 1 2 3 4 5

  // do-while loop
  int j = 1;
  do {
    print(j);
    j++;
  } while (j <= 5);

  // Output: 1 2 3 4 5
}
