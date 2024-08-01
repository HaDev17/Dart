// Getter & Setter in Classes

// Getter & Setter are used to access and read the private fields.
// Setter is for change the value of private fields.
// Getter is for read it

// this is a simple example of using getter and setter in Dart:
// I created a folder named Circle check it out.

import 'Circle.dart';

void main() {
  var c1 = Circle(raduis: 5);
  print(c1.raduis); // 5
  c1.raduis = 10;
  print(c1.raduis); // 10
  // So we changed the value of the private field raduis, and we read it.
  // we added also a getter function to calculate the area of the circle.
  print(c1.area); // 314.1592653589793
}
