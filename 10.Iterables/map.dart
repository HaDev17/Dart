// Map in Dart :

// The map() is a method of the Iterable class. The map() method creates a new iterable object
// that contains all elements of the iterable that pass a test.

// The map() method takes a function as an argument. The function is applied to each element of the iterable.

import '../7.AdvancedClasses/Inheritance1.dart';

main() {
// Examlple 1: Map elements of a collection using map()
  List<int> numbers = [1, 2, 3, 4, 5];
  var squaredNumbers = numbers.map((number) => number * number);
  print(squaredNumbers.toList()); // MappedListIterable<int, int>

  // Example 2: Using the map() with the where() method :
  List<Animal> animals = [
    Animal(name: 'Tom', age: 2, species: 'cat'),
    Animal(name: 'Brakslar', age: 2, species: 'dog'),
    Animal(name: 'Pepper', age: 6, species: 'dog'),
    Animal(name: 'Lola', age: 1, species: 'dog'),
    Animal(name: 'Poppy', age: 1, species: 'cat'),
    Animal(name: 'Bella', age: 1, species: 'Rabbit'),
    Animal(name: 'Coco', age: 1, species: 'Rabbit')
  ];

  var babyDogsName = animals
      .where((animal) => animal.age <= 2 && animal.species == 'dog')
      .map((animal) => animal.name);

  print(babyDogsName); // [Tom, Brakslar, Lola]
}

class Animal {
  String name;
  int age;
  String species;

  Animal({this.name = '', this.age = 0, this.species = ''});

  @override
  String toString() => name;
}
