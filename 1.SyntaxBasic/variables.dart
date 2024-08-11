// Variables in dart are declared using the var keyword.
var name = "Habib";
var age = 25;
var height = 5.8;

// The type of the variable is automatically inferred by the compiler.
// The type of the variable can also be explicitly mentioned.
String name1 = "Habib";
int age1 = 25;
double height1 = 5.8;

// There are two types of variables in Dart: mutable and immutable.
// Mutable variables can be changed after they are declared.
// Immutable variables cannot be changed after they are declared.

// The final keyword is used to declare a variable whose value cannot be changed.
final String name2 = "Habib";
// we can also use the const keyword to declare a variable whose value cannot be changed.
const String name3 = "Habib";

// Late variables are used when the value of the variable is not known at the time of declaration.
late String description;
// Or you can use ? to declare a nullable variable.
String? text;

void main() {
  description = 'Feijoada!';
  text = 'Hello, World!';
  print(description);
  print(text);
}

// it is also possible to declare multiple variables of the same type in a single line.
String name4 = "Habib", address = "Djelfa";
