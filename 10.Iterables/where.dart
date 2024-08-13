// Filter in Dart

// An iterable object is an ordered collection of elements. Dart uses the Iterable<E> abstract class to represent iterable objects.

// Both List and Set are iterable. Therefore, they implement all methods of the Iterable class.
// All classes that implement the iterable class have the where() method.

// The where() method is used to filter the elements of the collection based on a condition.

// Syntax :
// Iterable<E> where(bool test(E element))

main() {
  // Example 1: Filter elements of a collection using where()
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var oddNumbers = numbers.where((num) => num % 2 != 0);
  print(oddNumbers.runtimeType); // WhereIterable<int>
  // runtimeType returns the type of the object at runtime.
  // so the type of oddNumbers is WhereIterable<int>
  // we can convert it to a list using the toList() method.
  print(oddNumbers.toList()); // [1, 3, 5, 7, 9]

  // Example 2: Filter elements of a collection of objects

  var people = [
    Person(name: 'Alice', age: 18),
    Person(name: 'Bob', age: 16),
    Person(name: 'John', age: 21),
    Person(name: 'Peter', age: 23),
    Person(name: 'David', age: 15),
  ];

  var adults = people.where((person) => person.age >= 18);
  print(adults); // (Alice, John, Peter)
}

class Person {
  String name;
  int age = 0;

  Person({this.name = '', this.age = 0});

  @override
  String toString() => name;
}
