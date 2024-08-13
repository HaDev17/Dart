// throw in Dart

// The throw keyword is used to throw an exception.
// An exception is an error that occurs during the execution of a program.

// for example, if you try to divide a number by zero, it will throw an exception.

// The throw keyword is used to throw an exception. The syntax of the throw keyword is:

// throw expression;

// Let's see an example :

main() {
  int age = 10;
  if (age < 18) {
    throw Exception("You are not allowed to vote");
    // the Exception() constructor creates an exception object with the message "You are not allowed to vote".
  } else {
    print("You can vote");
  }

  // The above code will throw an exception because the age is less than 18.
}
