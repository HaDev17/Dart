// Transforming a stream :

// The Stream<T> object provides you with many useful methods for transforming data in the stream.

// For example, the following program uses the take() method to get the first 10 numbers,
// the where() method to get only even numbers, and the map() method to transform the numbers into strings:

import 'number.dart';

void main() async {
  Number()
      .stream
      .take(10)
      .where((number) => number % 2 == 0)
      .map((number) => 'number $number')
      .listen(
        (number) => print(number),
        onDone: () => print('Done!'),
      );
}
