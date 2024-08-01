// Inheritance in Dart

// Inheritance is a mechanism in which a new class is derived from an existing class.
// Inheritance is one of the most important feature of Object Oriented Programming.

// Inheritance represents the IS-A relationship which is also known as a parent-child relationship.

// Syntax:
// class derived-class extends base-class

// Base class
class Animal {
  void eat() {
    print('Animal is eating');
  }
}

// Derived class
class Dog extends Animal {
  void bark() {
    print('Dog is barking');
  }
}

void main() {
  var dog = Dog();
  dog.eat(); // Animal is eating
  dog.bark(); // Dog is barking

  // The is operator :
  print(dog is Dog); // true
  print(dog is Animal); // true

  // Because Dog is a subclass of Animal, the is operator returns true for both cases.
}


// This is a simple example of inheritance in Dart. 
// In practice we can have multiple levels of inheritance.