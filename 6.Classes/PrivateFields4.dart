// Private Fields

// In general, variables in classes are called fields, if the variable is public, we call it a property.
// In Dart, you can define private fields by prefixing the field name with an underscore (_).

class Point {
  double _x = 0;
  double _y = 0;

  Point({double x = 0, double y = 0}) {
    _x = x;
    _y = y;
  }

  show() {
    print('x: $_x, y: $_y');
  }
}

void main() {
  var p1 = Point(x: 2, y: 3);
  p1.show(); // x: 2, y: 3

  p1._x = 4;
  p1.show(); // x: 4, y: 3
  // The bad news that we can change the private fields,
  //because the class and the main function are in the same file
}

// So you have to create a file for the class and another file for the main function.
// I creat a folder named privateFieldTest you can check it out.

//Initializer list

// if we have a unnamed constructor we have to use initializer list.

class Point1 {
  double _x = 0;
  double _y = 0;

  Point1({double x = 0, double y = 0})
      : _x = x,
        _y = y;

  show() {
    print('x: $_x, y: $_y');
  }
}
