// Generator in Dart :

// Generators are a way of producing collections of values on-demand in Dart.
// They are functions that can generate multiple values, and these values are provided to the caller one at a time.

// There are two kinds of generators in Dart:

// 1.Synchronous Generator: These are marked by the sync* keyword and they return an Iterable.

Iterable<int> countTo(int n) sync* {
  for (int i = 1; i <= n; i++) {
    yield i;
  }
}

// This function returns an Iterable<int> that generates the numbers from 1 to n.
// sync* is a special syntax that tells Dart that this function is a synchronous generator.
// yield is a keyword that is used to emit a value from the generator.

// 2.Asynchronous Generator: These are marked by the async* keyword and they return a Stream.

Stream<int> countToAsync(int n) async* {
  for (int i = 1; i <= n; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

// This function returns a Stream<int> that generates the numbers from 1 to n with a delay of 1 second between each number.
// async* is a special syntax that tells Dart that this function is an asynchronous generator.
// delayed(callback) is a function that returns a Future that completes after the specified duration.
// and the Duration class is used to represent a time interval, it takes the number of seconds as an argument.
// it can also take minutes, hours, days, etc.

// Let's see the result of the above codes :

main() async {
  print("Synchronous Generator :");
  print(countTo(5)); // (1, 2, 3, 4, 5)

  print("\nAsynchronous Generator :");

  await for (int i in countToAsync(5)) {
    print(i);
  }
}

// Note : we use the async and await keywords to work with asynchronous code in Dart.
// The await keyword is used to pause the execution of the function until the Future completes.


// This is the last part of the Asynchronous Programming in Dart.

// Let's move to the Exercise file, we have interesting exercises for you, such as :
// 1. creating simple server using Dart.
// 2. fetching data from the internet.
// 3. connecting to the database.

