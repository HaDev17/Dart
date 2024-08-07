// part 2 of Extension Methods in dart :

// Let create two files named string_lib1.dart and string_lib2.dart

// In the first copy this :

// extension StringExtension on String {
//   String capitalize() =>
//       "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
// }

// The second :

// extension StringCase on String {
//   String capitalize() =>
//       "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
// }

// extension StringPadding on String {
//   String zeros(int width) => this.padLeft(width, '0');
// }

// you remark that the capitalize method are in the two files

// let's import the two files in the main file :

// import string_lib1.dart;
// import string_lib2.dart;

// void main() {
// print('hello'.capitalize());
// print('123'.zeros(6));
// }

// will be a problem called API conflit and dart will shows us :

//A member named 'capitalize' is defined in extension 'StringExtension' and extension 'StringCase', 
//and none are more specific.

// We have two solution :

// 1- using hide/show to limit the exposed API:

// import string_lib1.dart;
// import string_lib2.dart hide StringCase; // will hide the StringCase extension

// or 
// import string_lib2.dart show StringPadding; // will show only the StringPadding extension

// 2- Using extensions explicitly

// import 'string_lib1.dart';
// import 'string_lib2.dart';

// void main() {
// here we use the capitalize() extension method from the StringExtension explicitly
//   print(StringExtension('hello').capitalize());
//   print('123'.zeros(6));
// }