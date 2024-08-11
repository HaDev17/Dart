// Arrow Functions in Dart

// Arrow functions are a short-hand syntax for writing functions. They are also known as fat arrow functions.

// Simple example :
var arrow = () => print("This is an arrow function");

int add(int a, int b) => a + b;

void main() {
  arrow(); // Output: This is an arrow function
  print(add(2, 3)); // Output: 5
}
// In the above example, the arrow function is used to define a function that takes no arguments and prints a message.
// The add function takes two arguments and returns their sum.