//Operators in dart are used to perform operations on variables and values.
//Dart supports the following types of operators:
//1. Arithmetic Operators +, -, *, / and %

//2. Relational Operators >, <, >=, <=, == and !=

//3. Logical Operators &&, || and !

//4. Assignment Operators =, +=, -=, *=, /= and %=

//5. Bitwise Operators &, |, ^, ~, << and >>

//6. Conditional Operators ?:

//7. Type Test Operators as, is and is!

//8. Cascade Notation (..) and Null-aware Operators (?. and ??)

//9. Other Operators ~, [], ~/, ., (.), ?., ~, ~~

//Examples of operators in dart:

void main() {
  // Arithmetic Operators
  int a = 10;
  int b = 20;
  print(a + b); // 30
  print(a / b); // 0.5

  // Relational Operators
  print(a > b); // false
  print(a != b); // true

  // Logical Operators
  bool x = true;
  bool y = false;
  print(x && y); // false

  // Assignment Operators
  int c = 10;
  c += 5;
  print(c); // 15
  // c+=5 is equivalent to c = c + 5
  // same goes for -=, *=, /= and %=

  // Bitwise Operators
  // Bitwise operators work on bits and perform bit-by-bit operations.
  int d = 2; // 0010 in binary
  int e = 3; // 0011 in binary
  print(d & e); // 2
  print(d | e); // 3
  print(d ^ e); // 1

  // Conditional Operators
  int f = 10;
  int g = 20;
  var result = f > g ? 'f is greater than g' : 'f is less than or equal to g';
  print(result);

  // rest types of operators will be covered in the upcoming sections.
}
