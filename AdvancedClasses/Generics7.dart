// Generics in dart

// Generics are used to create classes, interfaces, and methods that operate on objects of specified type.
// So the importance of generics is to provide type safety and to reduce code duplication.

// Examples of generics in dart are List<E>, Set<E>, Map<K, V> etc.

// Let see an example of generics in dart.

class Pair<T> {
  T x;
  T y;

  Pair(this.x, this.y);

  T first() {
    return x;
  }

  T second() {
    return y;
  }
}

// Go to the main function to see the application of the above class.

// Parameterized type constraints
// We can also use parameterized type constraints to restrict the type of the generic type.
// For example, we can restrict the generic type to only accept the type that extends
// a specific class or implements a specific interface.

// Example :
// Create an abstract class Shape with an abstract method area.
abstract class Shape {
  double get area;
}

// Create a class Circle that extends the Shape class.
class Circle extends Shape {
  double radius;

  Circle({required this.radius});
  // Implement the abstract method area.
  @override
  double get area => 3.14 * radius * radius;
}

// Create a class Square that extends the Shape class.
class Square extends Shape {
  double length;

  Square({required this.length});
  // Implement the abstract method area.
  @override
  double get area => length * length;
}

// Here we have created a generic class Region that accepts only the type that extends the Shape class.

class Region<T extends Shape> {
  // list of shapes, list is a way to store multiple values on a variable
  List<T> shapes;
  Region({required this.shapes});

  // Calculate the total area of all the shapes in the list.
  double get area {
    double totalArea = 0;
    // Loop through all the shapes in the list and calculate the total area.
    for (var shape in shapes) {
      totalArea += shape.area;
    }
    return totalArea;
  }
}

void main() {
  // First example
  Pair<int> pair = Pair(10, 20);
  print(pair.first());
  print(pair.second());

  Pair<String> pair2 = Pair("Hello", "World");
  print(pair2.first());
  print(pair2.second());

  // Second example
  // Create a region with a list of shapes.
  var region = Region(
      shapes: [Circle(radius: 10), Square(length: 10), Square(length: 10)]);

  print(region.area); // 514.0
}


// Summary :

// Use generics to define classes and methods that work with more than one type.
// Use extends to constraint the type of the generics.