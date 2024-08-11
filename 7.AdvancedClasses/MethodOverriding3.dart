// Method Overriding in Dart

// Method overriding is a feature of OOP languages that allows a subclass to provide a specific implementation
// of a method that is already provided by its parent class.

// In Dart, you can override a method in a subclass by using the @override annotation.

// Example :

class Car {
  String? name;
  String? color;
  int? speed;

  Car(this.name, this.color, this.speed);

  @override
  String toString() {
    return 'Name: $name, Color: $color, Speed: $speed';
  }
  // We have overridden the toString() method in the Car class,
  // because the toString() method is defined in the Object class.,
  // and all classes in Dart inherit from the Object class.
}

class BMW extends Car {
  BMW(String color, int speed) : super("BMW", color, speed);
  @override
  String toString() {
    return super.toString() + ', Model: 2021';
  }
}

void main() {
  var car = Car("Audi", "Black", 200);
  print(car.toString()); // Name: Audi, Color: Black, Speed: 200
  // Or we can just use print(car);
  var bmw = BMW("White", 250);
  print(bmw); // Name: BMW, Color: White, Speed: 250, Model: 2021
}
