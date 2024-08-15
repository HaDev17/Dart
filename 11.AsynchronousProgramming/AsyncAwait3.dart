// Using async and await keywords

// The async and await keywords provide a declarative way to define asynchronous functions.

// When using async and await keywords, you should follow these rules:

//     Place the async keyword before the function body to make the function asynchronous.
//     The await keyword works only in async functions. In other words, if a function contains await keywords,
//     you need to make it an async function.

// The async keyword

Future<String> myAsyncFunction() {
  return Future.delayed(Duration(seconds: 2), () => 'Hello, Habib what\'s up');
}

main() async {
  print('Program started');
  String welcomeMessage = await myAsyncFunction();
  print(welcomeMessage);

  // Handling errors with try-catch block
  print(1);
  try {
    var value = await Future<int>.delayed(
        Duration(seconds: 0), () => throw Exception('Error occurred!'));
    print(value);
  } catch (e) {
    print(e);
  }
  print(3);
}


// Summary

//     A future is an object that represents the result of an asynchronous operation.
//     A future completes successfully with a value or fails with an error.
//     Dart uses the Future<T> class for creating future objects.
//     Use the async keyword to define asynchronous functions.
//     Use the await keyword to wait for a future to complete.