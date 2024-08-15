// Handling errors in Stream :

// The following modifies the number.dart file to raise an error in the number stream when the current number reaches 5:

import 'dart:async';

class Number {
  //  create a StreamController
  final _controller = StreamController<int>();
  var _count = 1;

  Number() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        _controller.sink.add(_count);
        _count++;
        if (_count == 5) {
          _controller.addError("Limit reached");
          _controller.close();
          timer.cancel();
        }
      },
    );
  }

  // property that returns the stream object
  Stream<int> get stream => _controller.stream;
}

main() {
  // with callback :
  Number().stream.listen((number) => print(number),
      onError: (err) => print(err), onDone: () => print("Done"));

  // with try-catch :

  // try {
  //   Number().stream.listen(
  //         (number) => print(number),
  //       );
  // } catch (e) {
  //   print(e);
  // }
}


// Summary : 

  // A stream represents multiple values that will be returned in the future.
  // Use the StreamController<T> to create a simple stream that others can listen to and push data into.
  // Use the Stream<T> class to manage streams.
  // Use the listen() method of the Stream<T> object to subscribe for notifications.