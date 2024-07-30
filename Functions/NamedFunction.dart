//Functions in Dart

// A function is a block of code that performs a specific task. In Dart, functions are objects and have a type, Function.
// They can be assigned to variables, passed as arguments, and returned from other functions.

// Dart supports the following types of functions:
// 1. Named functions
// 2. Anonymous functions
// 3. Arrow functions

// To define a function in Dart, you use the following syntax:
// returnType functionName(parameters) {
//   code to be executed
// }

// returnType: The type of the value that the function returns.
// If the function doesn't return a value, you can use the special type void.

// functionName: The name of the function. It should be a valid Dart identifier.

// parameters: The list of parameters that the function takes. Each parameter should have a type and a name.

// Examples :
int add(int a, int b) {
  return a + b;
}

void printNumber(int number) {
  print(number);
}

String greet(String name) {
  return 'Hello, $name!';
}

void main() {
  int sum = add(10, 20);
  print(sum); // Output: 30
  printNumber(10); // Output: 10
  print(greet("Habib")); // Output: Hello, Habib!
}
