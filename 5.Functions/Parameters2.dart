// Parameters of the functions

// In Dart, you can pass zero or more parameters to a function.
// The parameters are enclosed in parentheses and separated by commas.

// Syntax:
// returnType functionName(type1 parameter1, type2 parameter2, ...) {
//   code to be executed
// }

// Example:
int add(int a, int b) {
  return a + b;
}

// We can also pass optional parameters to a function in Dart.

// There are two types of optional parameters in Dart:
// 1. Positional parameters

String greet(String name, [String title = '']) {
  if (title.isEmpty) {
    return 'Hello $name';
  }
  return 'Hello $title $name!';
}

// we see that the title parameter is optional. If we don't provide a value for the title parameter,
// it will default to an empty string.

// 2. Named parameters

// Named parameters are enclosed in curly braces {} and are specified by name when calling the function.

String myGreet(String name, {String title = ''}) {
  if (title.isEmpty) {
    return 'Hello $name';
  }
  return 'Hello $title $name!';
}

// We can make the named parameter required.

void connect(String host,
    {int port = 3306, required String user, required String password}) {
  print('Connecting to $host on $port using $user/$password...');
}

void main() {
  // Positional parameters
  print(greet('John', 'Professor')); // Output: Hello, Professor John!
  // Named parameters
  print(myGreet('habib', title: "teacher")); // Output: Hello, John!
  // Named parameters makes the code more readable and easier to understand.

  // Required named parameters
  connect('localhost', user: 'root', password: 'secret');
}
