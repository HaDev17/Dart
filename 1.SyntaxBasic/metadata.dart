/*
Use metadata to give additional information about your code. A metadata annotation begins with the character @, followed
by either a reference to a compile-time constant (such as deprecated) or a call to a constant constructor.
*/

//Four annotations are available to all Dart code: @Deprecated, @deprecated, @override, and @pragma.
//For examples of using @override, see Extending a class. Here's an example of using the @Deprecated annotation:

class Television {
  /// Use [turnOn] to turn the power on instead.
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {
    // ···
  }
  // ···
}

// The @deprecated annotation is similar to @Deprecated, but it doesn't require a message parameter.

// Metadata can appear before a library, import, export, part, class, typedef, type parameter,
//constructor, factory, function, field, parameter, or variable declaration
//and before an enumeration, mixin, or extension declaration.

//You define your own metadata annotations by creating classes that extend the built-in class Metadata.
//For example, here's a metadata annotation named Todo that includes two fields:

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

//And here's an example of using that @Todo annotation:

@Todo('Dash', 'Implement this function')
void doSomething() {
  print('Do something');
}

//Metadata can be used to generate code, for example, to create JSON serialization code.
//For more information, see the json_serializable package.
