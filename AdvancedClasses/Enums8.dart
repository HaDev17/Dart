// Enums in dart

// Enums or enumerated types are special classes representing a fixed number of constant values.

// Syntax :

// enum EnumName {
//   value1,
//   value2,
//   ...
// }

// Note : Dart supports enums

// Example :

enum Status { none, running, stopped, paused }

void main() {
  // Enum values are accessed using the dot operator.
  print(Status.none); // Status.none

  // Enums can be used in switch statements.
  var status = Status.running;
  switch (status) {
    case Status.none:
      print('None');
      break;
    case Status.running:
      print('Running');
      break;
    case Status.stopped:
      print('Stopped');
      break;
    case Status.paused:
      print('Paused');
      break;
  }
  // Note that we have to handle all the cases in the switch statement, otherwise, we will get a warning.

  // Enums can be used in lists.
  List<Status> statuses = Status.values;
  // status.values returns a list of all the values in the enum.
  for (var status in statuses) {
    print(status); // Status.none, Status.running, Status.stopped, Status.paused
    // if you want to print just the value, you can use status.toString() and split the string to get the value.
    print(status.toString().split('.').last); // none, running, stopped, paused
  }
}
