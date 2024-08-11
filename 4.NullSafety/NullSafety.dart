// Null Safety

// Null means no value or absence of value. Dart has supported sound null safety since version 2.12.

// In null safety, variables cannot be null unless you explicitly specify that they can.

// For example if we create a variable : String str = "My string";
// and after that we assign the null to str : str = null
// it’ll cause a runtime error

// With null safety, types in the code are non-nullable by default. If you attempt to assign null to a variable,
// the code editor will issue an error. In other words, null safety turns the runtime errors into edit-time errors.
// This makes your code more robust.

// To specify that a variable can be null, you add a question mark (?) to the type in variable declaration

// Nullable types

// A nullable type contains null in addition to its own values of the type.

// To mark an existing type nullable, you place a question mark after the type. For example:

//     int? – a nullable integer such as 1, 2, and null.
//     double? – a nullable double such as 3.14, 2.5, and null.
//     bool? – nullable boolean such as true, false, and null.
//     String? – a nullable string such as ‘Hello’, ‘Bye’, and null.
//     Point? a nullable user-defined class Point. For example, point(10,20) and null.

// Let's see some examples :

void main() {
  String? habib = "Habib";
  print(habib); // habib
  habib = null;
  print(habib); // null

  bool verify(int? x) {
    if (x == null)
      return false;
    else
      return true;
  }

  print(verify(5));
  print(verify(null));
}
