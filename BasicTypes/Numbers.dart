// Numbers in Dart

/*
  Both int and double are subtypes of num. The num type includes basic operators such as +, -, /, and *, 
  and is also where you'll find abs(),ceil(), and floor(), among other methods.
   (Bitwise operators, such as >>, are defined in the int class.) 
   If num and its subtypes don't have what you're looking for, the dart:math library might.
*/

// Dart supports both integer and double numbers. Dart numbers can be classified into two types:

// 1. int: It is used to represent integer numbers.

var x = 1; // x is of type int
var hex = 0xDEADBEEF;

// 2. double: It is used to represent floating-point numbers.

var y = 1.1;
var exponents = 1.42e5;

// You can also declare a variable as a num. If you do this, the variable can have both integer and double values.

num h = 1; // x can have both int and double values
h += 2.5; // h is now 3.5

// You can also explicitly specify the type of a number by using int or double.
double z = 1; // Equivalent to double z = 1.0.
int a = 1; // Equivalent to int a = 1.

// We can check if the variable is not a number by using the isNaN property.
var notANumber = 0 / 0;
var isNan = notANumber.isNaN; // true

//Infinity and -Infinity
var positiveInfinity = double.infinity;
var negativeInfinity = double.negativeInfinity;

// You can also check if a number is finite by using the isFinite property.
var isFinite = positiveInfinity.isFinite; // false

// You can also check if a number is negative by using the isNegative property.
var isNegative = negativeInfinity.isNegative; // true

// We can check also if the number is odd, even, respectively by using the isOdd and isEven properties.

// This is a short into to numbers in dart if you want to learn more about numbers in dart 
// you can visit the official documentation of dart.