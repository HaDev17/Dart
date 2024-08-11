// Types in Dart
// Dart is a statically typed language, which means that the type of a variable is known at compile time.
// Dart supports the following types of data:
//
// 1.  Numbers
// 2.  Strings
// 3.  Booleans
// 4.  Records
// 5.  Lists
// 6.  Sets
// 7.  Maps
// 8.  Runes
// 9.  Symbols
// 10. The value null

// Runes and Symbols are rarely used, so we will not cover them.

// Dart also supports type inference, which means that you don't have to explicitly define the type of a variable.
// Dart automatically determines the type of the variable based on the value assigned to it.
// For example:

var name = 'John'; // name is of type String
var age = 25; // age is of type int
var height = 5.11; // height is of type double
var isStudent = true; // isStudent is of type bool


// Some other types also have special roles in the Dart language:

// -Object: The superclass of all Dart classes except Null.
// -Enum: The superclass of all enums. enums are used to craft a set of constant values. 
// -Future and Stream: Used in asynchrony support. we will learn about it later
// -Iterable: Used in for-in loops and in synchronous generator functions.
// -Never: Indicates that an expression can never successfully finish evaluating.
//   Most often used for functions that always throw an exception. 
// -dynamic: Indicates that you want to disable static checking. Usually you should use Object or Object? instead. 
// -void: Indicates that a value is never used. Often used as a return type.

