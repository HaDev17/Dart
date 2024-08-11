// Higher order function in Dart

// A higher order function is a function that takes another function as a parameter or returns a function as a result.

// Dart supports higher-order functions, which means you can pass functions as arguments to other functions,
// and you can also return functions from other functions.

// Fisrt of all functions in Dart are objects,
// so they can be assigned to variables or passed as arguments to other functions.

// Examples of higher order function

// Simple example of using function inside a function :
int power(a, b) {
  return a * b;
}

int multiplyByTwo(int a) {
  return power(a, 2);
}

// Example of passing function as an argument to another function

bool isOdd(int a) {
  return (a % 2 != 0);
}

bool isEven(int a) {
  return (a % 2 == 0);
}

void show(Function fn) {
  for (int i = 0; i <= 10; i++) {
    if (fn(i)) {
      print(i);
    }
  }
}

// Returning a function from a function

add(int x, int y) {
  return x + y;
}

subtract(int x, int y) {
  return x - y;
}

Function calculation(String op) {
  if (op == '+') return add;
  if (op == '-') return subtract;
  // return add by default if no operator is passed.
  return add;
}

// Apply the functions :

void main() {
  // First example
  print("multiple of 4 is :");
  print(multiplyByTwo(4));

  // Second example
  print("Even numbers:");
  show(isEven);

  print("Odd numbers:");
  show(isOdd);

  // Third example
  var fn = calculation('+');
  // fn is now a reference to the add function
  print(fn(10, 20)); // Output: 30

  fn = calculation('-');
  print(fn(30, 20)); // Output: 10
}
