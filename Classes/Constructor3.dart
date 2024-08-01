// Constructor of a class in Dart

// A constructor is a special method for creating and initializing objects of a class.
// The constructor is automatically called when an object of the class is created.

// If we creat a class without a constructor, Dart will create a default constructor for us.
// The default constructor is a constructor with no arguments, like this:

// class Point {
//   double x = 0;
//   double y = 0;
// }

// THis is equivalent to:
// class Point {
//   double x = 0;
//   double y = 0;
//   Point();
// }

// class Point {
//   double x = 0;
//   double y = 0;

//   //Default Constructor
//   Point() {
//     print('Constructor called');
//   }
// }

// we can pass arguments to the constructor like this:

class Point {
  double x = 0;
  double y = 0;

  //Constructor with parameters
  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }
}

// we can also use a short form of the constructor like this:
//Point(this.x, this.y);

//We can also use named constructors like this:

class Point1 {
  double x = 0;
  double y = 0;

  Point1(this.x, this.y);

  //Named Constructor
  Point1.origin() {
    this.x = 0;
    this.y = 0;
  }
}

// we can also forward the constructor to another constructor like this:
// Point.origin() : this(0, 0);

// so the origin constructor will call the constructor with parameters and pass 0, 0 to it.

// Applying the above concepts in the main function:
void main() {
  var p1 = Point(2, 3); // you see that we pass the arguments to the constructor
  print('x: ${p1.x}, y: ${p1.y}');

  // creating an object and passing the arguments to the constructor
  var p2 = Point1(10, 20);
  print('x: ${p2.x}, y: ${p2.y}');

  // call the origin constructor to set the points to (0, 0)
  p2 = Point1.origin();
  print('x: ${p2.x}, y: ${p2.y}');
}
