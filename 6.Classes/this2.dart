// this in Dart

// A class is a blueprint of objects. To reference the current object inside a class, you use the this keyword.
// The this keyword means the current instance of the class.

class Point {
  double x = 0;
  double y = 0;

  move(double x, double y) {
    this.x = x;
    this.y = y;
  }
}

// So without passing another named variables to the method, you can use this keyword to reference the current object.
// In other words, Instead of using the method like this :
// move(double x1, double y1) {
//   x = x1;
//   y = y1;
// }
// we use the this keyword to reference the current object, so :
// this.x = x; is equivalent to x = x; and the first x is the property of the class.

// Chain methods using this keyword
// The this keyword can be used to chain methods in Dart.
// We mean by this that you can call multiple methods on the same object in a single line, like this:
// p1.move(2, 3).show();

class Point2 {
  double x = 0;
  double y = 0;

  move(double x, double y) {
    this.x = x;
    this.y = y;
    return this; // return the current object
  }

  show() {
    print('x: $x, y: $y');
  }
}

// So if we call the move method on the object p1, it will return the current object,
// and then we can call the show method on the same object.

void main() {
  var p1 = Point2();
  p1.move(2, 3).show(); // x: 2, y: 3
}

// Summary
// The this keyword is used to reference the current object inside a class.
// The this keyword can be used to chain methods in Dart.
