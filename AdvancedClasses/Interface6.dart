// Interface in dart

// Interface is a class in which all the methods are abstract.
// Dart doesn’t have a separate interface keyword. Instead, you can use the abstract class to create an interface.
// An interface is a contract that defines the behavior of a class.
// A class can implement multiple interfaces.
// Let’s create an interface in Dart:

// Suppose you're building a zoo management system. You have different types of animals,
// but there are some operations that you need to perform on all animals,
// like feeding them or checking their health status.

// Create an Animal class :
abstract class Animal {
  // eat and checkHealth methods
  void eat();
  void checkHealth();
}

// Create a Lion class that implements the Animal interface:
class Lion implements Animal {
  // Implement the eat and checkHealth methods
  @override
  void eat() {
    print('Lion is eating...');
  }

  @override
  void checkHealth() {
    print('Checking lion\'s health...');
  }
}

// Create an Elephant class that implements the Animal interface:

class Elephant implements Animal {
  // Implement the eat and checkHealth methods
  @override
  void eat() {
    print('Elephant is eating...');
  }

  @override
  void checkHealth() {
    print('Checking elephant\'s health...');
  }
}

void main() {
  Lion lion = Lion();
  lion.eat(); // prints: Lion is eating...
  lion.checkHealth(); // prints: Checking lion's health...

  Elephant elephant = Elephant();
  elephant.eat(); // prints: Elephant is eating...
  elephant.checkHealth(); // prints: Checking elephant's health...
}


// Also you can use the implements keyword to implement multiple interfaces in a class.
// For example, if you have another interface called AnimalSound, you can implement it in the Lion class like this:

// class Lion implements Animal, AnimalSound {
//   // Implement the eat, checkHealth, and makeSound methods
// }

// In this example, the Lion class implements both the Animal and AnimalSound interfaces.

// Summary :
// An interface is a contract between classes.
// Dart has no interface keyword. Instead, all classes are implicit interfaces.
// Use an abstract class as an interface.
// A class can implement multiple interfaces but only can extend a single class.