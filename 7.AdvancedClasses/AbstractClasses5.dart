// Abstract Classes in Dart

// So far, you have learned how to define classes.These classes are called concrete classes.
// They’re concrete because you can create new objects out of them.

// Unlike a concrete class, you cannot create new objects from an abstract class.
// The main purpose of the abstract class is to allow other classes to inherit from it.

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius = 0;
  Circle({double this.radius = 0});

  @override
  double area() => 3.14 * radius * radius;
}

class Square extends Shape {
  double length = 0;
  Square({double this.length = 0});

  @override
  double area() => length * length;
}

void main() {
  var circle = Circle(radius: 5);
  print(circle.area()); // 78.5

  var square = Square(length: 5);
  print(square.area()); // 25
}


// Summary

// An abstract class is a class that cannot be instantiated. It’s declared with an abstract keyword.
// An abstract method only has the signature and doesn’t have the implementation.
// Subclasses of an abstract class must provide an implementation for abstract methods and properties.