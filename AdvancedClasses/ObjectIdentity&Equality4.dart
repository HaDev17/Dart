// Object Identity & Equality in Dart

// In Dart, every object has an identity and an equality relationship with other objects.

// Object Identity

// In Dart, all classes implicitly inherit from the Object class directly or indirectly.
// Therefore, all classes can access the == operator from the Object class.

// The == operator is used to compare the identity of two objects.
// Let imagine that we have a class named Person with two properties: name and age.
// we have two objects of the Person class, person1 and person2, with the same name and age.
// if we compare these two objects using the == operator, it will return false because they have different identities.
// Also the identical() function can be used to compare the identity of two objects.

// Object Equality

// If we want the == operator be true when two objects have the same properties,
// we need to override the == operator in the class.

// Lets see an example:

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
}

class Point {
  int? x;
  int? y;

  Point(this.x, this.y);

  // Using the @override annotation to override the == operator

  @override
  operator ==(o) => o is Point && o.x == x && o.y == y;
  // Using the @override annotation to override the hashCode getter
  // every object has a hashCode, which is like an object's identity
  // So, we need to override the hashCode getter to return a unique value for each object
  @override
  int get hashCode => Object.hash(x, y);
}

void main() {
  // Object Identity
  var person1 = Person('Alice', 25);
  var person2 = Person('Alice', 25);
  var result = person1 == person2;
  print(result); // false
  var person3 = person1;
  var result1 = identical(person1, person3);
  print(result1); // true

  // Object Equality

  var point1 = Point(2, 3);
  var point2 = Point(2, 3);
  var result2 = point1 == point2;
  print(result2); // true
  // The hashCode getter returns a unique value for each object
  print(point1.hashCode);
  print(point2.hashCode);
}
