// Stream in Dart :

// A future represents a single value that will be returned by an asynchronous operation.
// A stream is like a list of futures, representing multiple values that will be returned in the future.

// Dart uses the Stream<T> class to create streams. Since the Stream<T> is a generic class,
// you can have a stream of any objects.

// Typically, you’ll use streams to :
//   Read data from a large file in chunks.
//   Download a resource from a remote server.
//   Listen for requests coming into a server.

// In practice, you’ll often consume streams from libraries rather than creating new streams from scratch.
// But to understand it deeply, we’ll show you how to create a simple stream.

// Creating a stream :
// To create a stream, you use the StreamController<T> class.
// The StreamController<T> class creates a stream that others can listen to and push events (or data) to it.

// Note: to use stream we have to import dart async library.

// Here are the steps for creating a stream :
// Let's jump to the "number.dart" file ...

// Let's importing the "number.dart" file after creating a stream in it.

import 'number.dart';
// Using the async library start in line 70.

main() {
  // Reading from a stream :
  // create an instance of the Number class
  var stream = Number().stream;

  // listen to the stream using the listen() method, it takes a callback function that is called every time
  // the stream emits a new value.
  // By default, a stream accepts a single subscription. In other words, a stream only allows a single listener
  // for its whole lifespan.
  // If you try to listen to the same stream more than once, you’ll get an error.
  var subscription = stream.listen((data) {
    print(data);
  });

  // The program will output the numbers 1, 2, 3, 4, 5, and so on every second.

  // if we want to listen to the stream multiple times, we can use the asBroadcastStream() method.
  // The asBroadcastStream() method creates a broadcast stream that allows multiple listeners.

  // you can use the code below, but after delete the subscription variable, because the program can't listen to
  // the stream without asBroadcastStream() method and with it in the same time.

  // var broadcastStream = stream.asBroadcastStream();
  // var subscription1 = broadcastStream.listen((data) {
  //   print("Subscription 1: $data");
  // });
  // var subscription2 = broadcastStream.listen((data) {
  //   print("Subscription 2: $data");
  // });

  // Reading from a stream using an await-for statement
  // See the asyncAwaitStream.dart file.

  // StreamSubscription<T> :
  // The listen() method of the Stream<T> object returns an instance of the StreamSubscription<T>
  // The StreamSubscription<T> object has three useful methods:
  // pause() – pauses a subscription.
  // resume() – resumes a subscription after a pause.
  // cancel() – cancels a subscription.

  // pause after 2 seconds
  // discomment this :
  // Timer(
  //   Duration(seconds: 2),
  //   () {
  //     print('Pausing the subscription');
  //     subscription.pause();
  //   },
  // );

  // // resume after three seconds later
  // Timer(
  //   Duration(seconds: 5),
  //   () {
  //     print('Resuming the subscription');
  //     subscription.resume();
  //   },
  // );
}
