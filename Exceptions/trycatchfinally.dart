// Try-catch-finally in Dart

// The finally is an optional block of the try-catch statement.
// The finally block always executes whether an exception occurs or not.

// In practice, you often use the finally block to clean up the resources.
// For example, you can close a file or a connection to the database in the finally clause.

// The syntax :

// try {
//     // place the code that may cause exceptions
// } catch(e) {
//    // place the code that handles the exception
// } finally {
//    // place the code that clean up the resource
// }

// The following example uses the try-catch-finally statement to write a text string into a file:

void main() {
  try {
    riskyFunction();
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print(
        'This line always runs, regardless of whether an exception was thrown or not.');
  }
}

void riskyFunction() {
  if (DateTime.now().second % 2 == 0) {
    // throw is used to throw an exception.
    throw Exception('An exception occurred!');
  } else {
    print('No exception was thrown.');
  }
}
