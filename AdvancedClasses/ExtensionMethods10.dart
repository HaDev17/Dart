// Extension Methods in Dart

// Extension methods are used to extend existing libraries.
// Let's see an example of extension methods in Dart.

// suppose we want a function that capitalize the first letter of a string.
// the function will be like this:

// String capitalize(String str) =>
//     '${str[0].toUpperCase()}${str.substring(1).toLowerCase()}';

// and to print the capitalized string, we will call the function like this:
// print(capitalize(s)); // s is the string
// But what if we want to call the function like this:
// print(s.capitalize());

// here we need the extension methods.

// Define an extension method on the String class

extension on String {
  String capitalize() =>
      '${this[0].toUpperCase()}${this.substring(1).toLowerCase()}';
}

void main() {
  var s = 'hello';
  print(s.capitalize()); // Hello
}

// extension syntax :
// extension <extension_name> on <class_name> {...}
// you see that the name is optional, but it's a good practice to give a name to the extension.
