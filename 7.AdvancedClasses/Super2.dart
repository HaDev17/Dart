//Super in Dart

// Unlike other OOP languages such as C#, in Dart, a subclass doesn’t inherit constructors from its parent class.

// However, a subclass can call the constructor of its parent class using the super keyword.

// The super keyword is used to refer to the immediate parent class of a class.

// Syntax:
// super([arguments]);

// The super keyword can be used to refer to the superclass of a class.
// It can be used to refer to the superclass constructor

// Example:

class Animal {
  String? name;
  String? type;
  int? age;

  Animal(name, type, age) {
    this.name = name;
    this.type = type;
    this.age = age;
  }

  void eat() {
    print('$name is eating');
  }
}

class Cat extends Animal {
  Cat(name, type, age) : super(name, type, age);

  void meow() {
    print('$name is meowing');
  }
}

void main() {
  var cat = Cat('Tom', 'Persian', 2);
  cat.eat(); // Tom is eating
  cat.meow(); // Tom is meowing
}
