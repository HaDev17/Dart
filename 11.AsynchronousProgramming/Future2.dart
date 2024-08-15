// Asynchronous Programming in Dart
// Asynchronous programming is a form of parallel programming that allows a unit of work to run separately
// from the primary application thread.

// In Dart, you can perform asynchronous operations using the Future class. A Future represents a potential value
// or error that will be available at some time in the future.

// A future is an object that represents the result of an asynchronous operation. A future object will return
// a value at a later time.

// A future has two states: uncompleted and completed. When a future completes, it has two possibilities:

//     Completed with a value
//     Failed with an error

// Dart uses the Future<T> class for creating future objects. Because the Future<T> is a generic class,
// the value it returns can be any object.

// In practice, you often consume future objects instead of creating them.'

// Let's see an example of the Future class:

// var future = Future<String>.delayed(Duration(seconds: 10), () => 'habib');

// The future is an object of the Future<String> class.
// The first argument of the Future<int>.delayed() constructor is a Duration object.
// Dart will add the anonymous function in the second argument to the event queue and
// delay executing it by 4 seconds.
// The event loop will move the anonymous function () => 'habib' to the main isolate and execute it.

main() {
  // Simple example of Future :
  var future = Future<String>.delayed(Duration(seconds: 4), () => 'habib');
  // Using callbacks
  // When a future completes, you can run a callback to handle the result.
  // The Future<T> class provides three methods for scheduling a callback:
  // then(), catchError(), and whenComplete().

  // The then() method schedules a callback to run when the future completes with a value.
  future.then((value) => print(value)); // habib
}
