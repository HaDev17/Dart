// Objects and Classes in Dart

// Dart is an object-oriented programming language.
// In Dart, [everything is an object. An object consists of states and behaviors:
//  -The state describes the values that an object has at a specified time.
//  -The behaviors are actions that an object can do to manipulate its state.

//To create an object, you need to define a class first. A class is a blueprint for creating objects.

//Variables are used to model the state of objects. When variables are defined inside a class,
// they are called properties of the class.

//Functions are used to model the behaviors of objects. When functions are defined inside a class,
// they are called methods.

class Point {
  double x = 0;
  double y = 0;

  // Methods
  void move(double x1, double y1) {
    x = x1;
    y = y1;
  }

  void show() {
    print('x: $x, y: $y');
  }
}

void main() {
  // Creating an object of the class Point
  var p1 = Point();

  // change the properties of the object
  p1.x = 1;
  p1.y = 2;
  // Accessing properties and methods of the class Point
  p1.show();
  p1.move(2, 3); // calling the method move, points will be moved to (2, 3)
  p1.show();

  // another way to create an object of the class Point
  var p2 = Point()
    ..x = 10
    ..y = 20;

  p2.show(); // calling the method show

  // 'is' check operator, is used to verify if the object is an instance of a class
  print(p2 is Point); // true
}
