// Factory Constructors in dart

// Factory constructors are used when you want to return an instance of a class from a method

// when you want return a value in the constructor, you can use factory constructor

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  factory Student.customConstructor(String name, int age) {
    if (age > 18) {
      return Student(name, age);
    } else {
      return Student(name, 18);
    }
  }
}

void main() {
  Student student1 = Student('Peter', 20);
  Student student2 = Student.customConstructor('John', 15);

  print(student1.name);
  print(student1.age);

  print(student2.name);
  print(student2.age);
}
