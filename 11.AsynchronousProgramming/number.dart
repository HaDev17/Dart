// First, create an instance of the StreamController<T> class:
// var controller = StreamController<int>();

// Second, add an event to the stream via the sink property of the StreamController<T> object.
// The sink property has the type of StreamSink<T>. For example, the following adds the number 1 to the stream:
// controller.sink(1);

// Third, access the stream via the stream property of the StreamController<T> object:
// var stream = controller.stream;

// Fourth, to raise an error, you use the addError() method:
// controller.addError("An error occurred");

// Finally, to close the stream, you use the close() method:
// controller.close();

// The following illustrates how to use the StreamController<T> to create a stream that emits an integer every second:

import 'dart:async';

class Number {
  // create a StreamController object
  final _controller = StreamController<int>();
  // create a private variable to keep track of the count
  int _count = 1;
  // Number constructor
  Number() {
    // create a Timer object that emits an integer every second
    // the periodic method is for creating a repeating timer, it takes two arguments:
    // the first argument is the duration between each tick
    // the second argument is a callback function that is called every time the timer ticks
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(_count);
      _count++;
    });
  }

  Stream<int> get stream => _controller.stream;
}
