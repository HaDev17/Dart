// Try Catch in Dart :

// Exceptions are errors that may occur in the program. If you don’t catch the exceptions and handle them properly,
// the program will crash.

// for example this code :
// void main() {
//   String message = "Hello";
//   print("The character at the position 5 is ${message[5]}.");
//   print('Bye!');
// }

// will stop at the line 11 and The program crashed and issued the following error:
// Unhandled exception:
// RangeError (index): Invalid value: Not in inclusive range 0..4: 5

// without printing the last message.

// But if we use error exception it will works.
// First of all let's see the syntax :

// try {
//    // code that may cause an exception
// } catch(e) {
//    // code that handles the exception
// }

main() {
  String message = "Hello";
  try {
    print("The character at the position 5 is ${message[5]}.");
  } catch (e) {
    print(e); // the program will show the problem
  }
  print('bye'); // after that, print bye

  // Stack trace :
  // A stack trace is a list of function or method calls that lead to the exception.
  // The catch() accepts a second parameter that represents a stack trace. For example:

  try {
    print("The character at the position 5 is ${message[5]}.");
  } catch (e, s) {
    print(e); // the program will show the problem
    print(s); // the program will show the stack trace
  }
  print('Bye!');

  // The on clauses :
  // If you know the exact exception that may occur, you can use the try-catch statement with the on clauses like this:
  // try {
  //   // code that may cause the exception
  // } on Exception1 catch(e) {
  //   // handle Exception1
  // } on Exception2 catch(e) {
  //   // handle Exception2
  // } catch (e) {
  //   // handle other exceptions
  // }

//  The following example demonstrates how to handle the RangeError exception:
  try {
    print("The character at the position 5 is ${message[5]}.");
  } on RangeError {
    print("The index is out of range.");
  }
}
